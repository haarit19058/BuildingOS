#![allow(non_camel_case_types)]
#![allow(non_upper_case_globals)]
#![allow(non_snake_case)]


use crate::buf_h::*;
use crate::spinlock_h::*;
use crate::types_h::*;
use crate::memide::*;
use crate::syscall::*;
use crate:: proc::*;
use crate::syscall_h::*;    
// use crate::{panic, sleep, wakeup, iderw}; // assume these are defined elsewhere

// Number of buffers
const NBUF: usize = 30; // adjust this to match your param.h

pub struct bcache {
    pub lock: spinlock,
    pub buf: [buf; NBUF],

    // Head of doubly-linked list of buffers.
    // head.next is most recently used.
    pub head: buf,
}

impl bcache {
    pub const fn new() -> Self {
        bcache {
            lock: spinlock::new(),
            buf: [buf::new(); NBUF],
            head: buf::new(),
        }
    }

    pub unsafe fn binit(&mut self) {
        self.lock.init(b"bcache\0".as_ptr());

        // Initialize head as circular list
        self.head.prev = Some(&mut self.head);
        self.head.next = Some(&mut self.head);

        // Create linked list of buffers
        for b in self.buf.iter_mut() {
            b.next = self.head.next;
            b.prev = Some(&mut self.head);
            b.dev = u32::MAX; // equivalent to -1 in C
            if let Some(next) = self.head.next {
                (*next).prev = Some(b as *mut buf);
            }
            self.head.next = Some(b as *mut buf);
        }
    }

    // Look through buffer cache for sector on device dev.
    // If not found, allocate fresh block.
    // In either case, return B_BUSY buffer.
    unsafe fn bget(&mut self, dev: uint, sector: uint) -> *mut buf {
        self.lock.acquire();

        loop {
            // Check if cached
            let mut bptr = self.head.next;
            while let Some(b) = bptr {
                if (*b).dev == dev && (*b).sector == sector {
                    if (*b).flags & B_BUSY == 0 {
                        (*b).flags |= B_BUSY;
                        self.lock.release();
                        return b;
                    }
                    sleep(b as *mut _, &mut self.lock);
                    // retry
                    continue;
                }
                bptr = (*b).next;
            }

            // Not cached; recycle non-busy, clean buffer
            let mut bptr = self.head.prev;
            while let Some(b) = bptr {
                if (*b).flags & B_BUSY == 0 && (*b).flags & B_DIRTY == 0 {
                    (*b).dev = dev;
                    (*b).sector = sector;
                    (*b).flags = B_BUSY;
                    self.lock.release();
                    return b;
                }
                bptr = (*b).prev;
            }

            // panic("bget: no buffers\0".as_ptr());
        }
    }

    // Return a B_BUSY buf with contents of disk sector
    pub unsafe fn bread(&mut self, dev: uint, sector: uint) -> *mut buf {
        let b = self.bget(dev, sector);
        if (*b).flags & B_VALID == 0 {
            iderw(b);
        }
        b
    }

    // Write buffer to disk. Must be B_BUSY
    pub unsafe fn bwrite(&mut self, b: *mut buf) {
        if (*b).flags & B_BUSY == 0 {
            // panic("bwrite\0".as_ptr());
        }
        (*b).flags |= B_DIRTY;
        iderw(b);
    }

    // Release a B_BUSY buffer.
    // Move to head of MRU list.
    pub unsafe fn brelse(&mut self, b: *mut buf) {
        if (*b).flags & B_BUSY == 0 {
            // panic("brelse\0".as_ptr());
        }

        self.lock.acquire();

        // remove from list
        if let Some(prev) = (*b).prev {
            (*prev).next = (*b).next;
        }
        if let Some(next) = (*b).next {
            (*next).prev = (*b).prev;
        }

        // insert at MRU head
        (*b).next = self.head.next;
        (*b).prev = Some(&mut self.head);
        if let Some(next) = self.head.next {
            (*next).prev = Some(b);
        }
        self.head.next = Some(b);

        (*b).flags &= !B_BUSY;
        wakeup(b as *mut _);

        self.lock.release();
    }
}

// Global buffer cache
pub static mut BCACHE: bcache = bcache::new();
