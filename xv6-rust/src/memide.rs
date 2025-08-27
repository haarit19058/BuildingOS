#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]

use core::ptr;

use crate::buf_h::{buf, B_BUSY, B_VALID, B_DIRTY};
use crate::types_h::uchar;
// use crate::types_h::uint;

// some thing is wrong here look at it what is wrong
extern "C" {
    static _binary_fs_img_start: uchar;
    static _binary_fs_img_size: uchar;
}

// Mutable globals (mirror the C code)
static mut MEMDISK: *mut u8 = core::ptr::null_mut();
static mut DISKSIZE: usize = 0;

/// Initialize the fake IDE: set memdisk pointer and compute disk size in 512-byte sectors.
pub unsafe fn ideinit() {
    // Start of image
    MEMDISK = &_binary_fs_img_start as *const uchar as *mut u8;

    // The C code used: disksize = (uint)_binary_fs_img_size / 512;
    // `_binary_fs_img_size` is a linker symbol; take its address as usize and divide.
    // This mirrors the original C behaviour.
    DISKSIZE = (&_binary_fs_img_size as *const uchar as usize) / 512;
}

/// Interrupt handler for fake IDE (no-op).
pub fn ideintr() {
    // no-op for memory-backed disk
}

/// Sync buf with "disk".
///
/// Safety: caller must pass a valid `*mut buf` pointer and must respect kernel invariants
/// (e.g., that buffer is B_BUSY as the original C code expects).
pub unsafe fn iderw(bp: *mut buf) {
    if bp.is_null() {
        // crate::panic!("iderw: null buf");
    }

    // Dereference
    let b: &mut buf = &mut *bp;

    // Must be busy
    if (b.flags & B_BUSY) == 0 {
        // crate::panic!("iderw: buf not busy");
    }

    // If (B_VALID|B_DIRTY) == B_VALID then nothing to do (i.e., VALID and not DIRTY)
    if (b.flags & (B_VALID | B_DIRTY)) == B_VALID {
        // crate::panic!("iderw: nothing to do");
    }

    // Only accept device 1 (same as original)
    if b.dev != 1 {
        // crate::panic!("iderw: request not for disk 1");
    }

    // Sector range check
    if (b.sector as usize) >= DISKSIZE {
        // crate::panic!("iderw: sector out of range");
    }

    // Compute pointer into memdisk
    let base = MEMDISK;
    if base.is_null() {
        // crate::panic!("iderw: memdisk not initialized");
    }

    let src_dst = base.add((b.sector as usize) * 512);

    if (b.flags & B_DIRTY) != 0 {
        // write buffer to memdisk: memmove(p, b->data, 512);
        // both src and dst are distinct regions; use copy_nonoverlapping
        ptr::copy_nonoverlapping(b.data.as_ptr(), src_dst, 512);
        // clear dirty
        b.flags &= !B_DIRTY;
    } else {
        // read from memdisk into buffer: memmove(b->data, p, 512);
        ptr::copy_nonoverlapping(src_dst, b.data.as_mut_ptr(), 512);
    }

    // mark valid
    b.flags |= B_VALID;
}
