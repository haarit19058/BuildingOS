// src/memory/mod.rs
#![no_std]

pub mod buddy;

use buddy::Buddy;
use buddy::SpinLock;

// Tune these constants for your kernel region
pub const MIN_ORDER: usize = 12; // 1 << 12 = 4096 bytes page
pub const MAX_ORDERS: usize = 20; // adjust so MAX block isn't too huge

// static storage used by buddy allocator (must be 'static lifetime)
#[link_section = ".bss.uninit"]
static mut BUDDY_FREE_LISTS: [usize; MAX_ORDERS + 1] = [0usize; MAX_ORDERS + 1];

#[link_section = ".bss.uninit"]
static LOCK: SpinLock = SpinLock::new();

static mut BUDDY_ALLOC: Option<Buddy> = None;

/// Initialize buddy with memory region [base, base + size)
/// You should call this early in boot once physical memory region is known.
pub unsafe fn init_buddy(base: usize, size: usize) {
    let bf = &mut BUDDY_FREE_LISTS;
    match Buddy::new(base, size, MIN_ORDER, bf, &LOCK) {
        Some(mut b) => {
            b.init();
            BUDDY_ALLOC = Some(b);
        }
        None => panic!("failed to create buddy allocator"),
    }
}

pub unsafe fn alloc(size: usize) -> Option<usize> {
    if let Some(ref mut b) = BUDDY_ALLOC {
        b.alloc(size)
    } else {
        None
    }
}

pub unsafe fn free(addr: usize, size: usize) {
    if let Some(ref mut b) = BUDDY_ALLOC {
        b.free(addr, size);
    }
}
