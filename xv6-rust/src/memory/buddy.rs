// src/memory/buddy.rs
#![no_std]

use core::ptr::{read_volatile, write_volatile};
use core::sync::atomic::{AtomicBool, Ordering};

/// Minimal spinlock — safe for kernel single-CPU or coarse locking across CPUs
struct SpinLock {
    locked: AtomicBool,
}

impl SpinLock {
    const fn new() -> Self {
        Self {
            locked: AtomicBool::new(false),
        }
    }

    fn lock(&self) {
        // simple spin
        while self.locked.swap(true, Ordering::Acquire) {
            // busy wait
            core::hint::spin_loop();
        }
    }

    fn unlock(&self) {
        self.locked.store(false, Ordering::Release);
    }
}

/// Buddy allocator
pub struct Buddy {
    base: usize,
    size: usize,
    min_order: usize,  // exponent: block_size = 1 << min_order
    max_order: usize,
    /// head of free list for order i is free_lists[i]; pointer stored as usize address
    free_lists: &'static mut [usize],
    lock: &'static SpinLock,
}

impl Buddy {
    /// Create allocator instance pre-allocated structures.
    ///
    /// `free_lists_buf` must be a mutable slice of length (max_order + 1).
    /// It is used to store the heads of the lists and must live for 'static (e.g. placed in .bss)
    pub unsafe fn new(
        base: usize,
        size: usize,
        min_order: usize,
        free_lists_buf: &'static mut [usize],
        lock: &'static SpinLock,
    ) -> Option<Self> {
        if free_lists_buf.len() == 0 {
            return None;
        }

        // find maximum order such that (1 << max_order) * (1 << min_order) <= size
        let mut max_order = 0usize;
        let min_sz = 1usize << min_order;
        let mut cur_sz = min_sz;
        while (cur_sz << 1) <= size {
            cur_sz <<= 1;
            max_order += 1;
        }

        // clear lists
        for i in 0..=max_order {
            free_lists_buf[i] = 0;
        }

        Some(Self {
            base,
            size,
            min_order,
            max_order,
            free_lists: free_lists_buf,
            lock,
        })
    }

    /// Initialize with a single free block covering the whole region, broken into
    /// aligned blocks of the largest possible power-of-two size.
    pub unsafe fn init(&mut self) {
        // clear free lists
        for i in 0..=self.max_order {
            self.free_lists[i] = 0;
        }

        // Start from base and insert largest blocks until we cover region
        let mut addr = self.base;
        let end = self.base + self.size;

        while addr < end {
            // compute largest block we can place at addr (power-of-two size) that is
            // <= remaining length and aligned to that size.
            let mut order = self.max_order;
            loop {
                let blk_size = (1usize << self.min_order) << order;
                if addr % blk_size == 0 && addr + blk_size <= end {
                    break;
                }
                if order == 0 {
                    break;
                }
                order -= 1;
            }
            self.push_free(addr, order);
            let blk_size = (1usize << self.min_order) << order;
            addr += blk_size;
        }
    }

    /// Allocate at least `size` bytes. returns physical address aligned to block size.
    pub unsafe fn alloc(&mut self, size: usize) -> Option<usize> {
        // pick smallest order that fits `size`
        let mut needed_order = 0usize;
        let min_sz = 1usize << self.min_order;
        let mut cur_sz = min_sz;
        while cur_sz < size {
            cur_sz <<= 1;
            needed_order += 1;
            if needed_order > self.max_order {
                return None;
            }
        }

        self.lock.lock();
        let res = self.alloc_order(needed_order);
        self.lock.unlock();

        res
    }

    /// Convenience: allocate N pages where page size = 1 << min_order
    pub unsafe fn alloc_pages(&mut self, n_pages: usize) -> Option<usize> {
        let page_size = 1usize << self.min_order;
        let size = n_pages * page_size;
        self.alloc(size)
    }

    /// Free block at `addr` with original allocation size `size`.
    pub unsafe fn free(&mut self, addr: usize, size: usize) {
        // compute original order
        let min_sz = 1usize << self.min_order;
        let mut order = 0usize;
        let mut cur_sz = min_sz;
        while cur_sz < size {
            cur_sz <<= 1;
            order += 1;
            if order > self.max_order {
                // invalid size; ignore
                return;
            }
        }

        self.lock.lock();
        self.free_order(addr, order);
        self.lock.unlock();
    }

    pub unsafe fn free_pages(&mut self, addr: usize, n_pages: usize) {
        let page_size = 1usize << self.min_order;
        self.free(addr, n_pages * page_size);
    }

    // --- internal helpers ---

    /// allocate a block of exactly order `o` or split a larger one
    unsafe fn alloc_order(&mut self, o: usize) -> Option<usize> {
        if o > self.max_order {
            return None;
        }

        // find first non-empty list at or above o
        let mut current = o;
        while current <= self.max_order && self.free_lists[current] == 0 {
            current += 1;
        }
        if current > self.max_order {
            return None;
        }

        // pop block from current
        let mut addr = self.pop_free(current).expect("we checked non-empty");

        // split while current > o
        while current > o {
            current -= 1;
            let half = (1usize << self.min_order) << current;
            let buddy = addr + half;
            // push buddy into free list of order `current`
            self.push_free(buddy, current);
            // keep lower half (addr unchanged)
        }

        Some(addr)
    }

    /// free a block with coalescing
    unsafe fn free_order(&mut self, mut addr: usize, mut order: usize) {
        loop {
            // buddy address:
            let blk_size = (1usize << self.min_order) << order;
            let relative = addr - self.base;
            let buddy_relative = relative ^ blk_size;
            let buddy = self.base + buddy_relative;

            // try to remove buddy from free list of this order
            if self.remove_from_freelist(buddy, order) {
                // buddy was free -> coalesce
                if buddy < addr {
                    addr = buddy;
                }
                // increase order and loop
                order += 1;
                if order > self.max_order {
                    // reached maximum order; push and return
                    self.push_free(addr, order - 1);
                    return;
                } else {
                    continue;
                }
            } else {
                // buddy not free -> push addr into list and stop
                self.push_free(addr, order);
                return;
            }
        }
    }

    /// Push block `addr` into free_lists[order]. Stores a usize pointer at addr for chaining.
    unsafe fn push_free(&mut self, addr: usize, order: usize) {
        // store current head at addr
        let head = self.free_lists[order];
        // write head (usize) into memory at addr
        write_usize(addr, head);
        // update head to addr
        self.free_lists[order] = addr;
    }

    /// Pop head from free_lists[order], returns address or None
    unsafe fn pop_free(&mut self, order: usize) -> Option<usize> {
        let head = self.free_lists[order];
        if head == 0 {
            return None;
        }
        // read next from head
        let next = read_usize(head);
        self.free_lists[order] = next;
        // clear stored pointer optionally
        write_usize(head, 0);
        Some(head)
    }

    /// Remove a specific block `addr` from free list `order`.
    /// Returns true if removed, false if not found.
    unsafe fn remove_from_freelist(&mut self, addr: usize, order: usize) -> bool {
        let mut cur = self.free_lists[order];
        if cur == 0 {
            return false;
        }
        // if head is the node
        if cur == addr {
            let next = read_usize(cur);
            self.free_lists[order] = next;
            return true;
        }
        // walk list
        let mut prev = cur;
        cur = read_usize(prev);
        while cur != 0 {
            if cur == addr {
                let next = read_usize(cur);
                write_usize(prev, next); // prev.next = next
                // clear removed node (optional)
                write_usize(cur, 0);
                return true;
            }
            prev = cur;
            cur = read_usize(cur);
        }
        false
    }
}

/// Read usize stored at physical address `addr`
/// (unsafe because we're writing/reading raw memory)
unsafe fn read_usize(addr: usize) -> usize {
    let p = addr as *const usize;
    read_volatile(p)
}
unsafe fn write_usize(addr: usize, val: usize) {
    let p = addr as *mut usize;
    write_volatile(p, val);
}

// ------------------------------------------------------------------
// Example static buffers you'll need to place in your kernel (in .bss)
// ------------------------------------------------------------------
// We cannot allocate dynamic Rust memory easily in kernel startup, so prepare
// space at link time. The user of this module must provide these statics.
//
// Example (in some module):
// static mut BUDDY_FREE_LISTS: [usize; MAX_ORDERS + 1] = [0; MAX_ORDERS + 1];
// static LOCK: SpinLock = SpinLock::new();
//
// Then call:
// let mut buddy = unsafe { Buddy::new(base, size, MIN_ORDER, &mut BUDDY_FREE_LISTS, &LOCK).unwrap() };
// unsafe { buddy.init(); }
// ------------------------------------------------------------------
