use crate::types_h::*;
// use crate::defs::*;
use crate::param_h::*;
use crate::spinlock_h::*;
use crate::fs_h::*;
use crate::buf_h::*;
// Extern symbols for embedded filesystem image
extern "C" {
    static _binary_fs_img_start: u8;
    static _binary_fs_img_size: u8;
}

pub fn ideinit() {
    unsafe {
        MEMDISK = &_binary_fs_img_start as *const u8 as *mut u8;
        let size_bytes = &_binary_fs_img_size as *const u8 as usize;
        DISKSIZE = size_bytes / 512;
    }
}

// Interrupt handler (no-op for memory disk)
pub fn ideintr() {
    // intentionally empty
}

// Sync buf with disk.
// If B_DIRTY is set, write buf to disk, clear B_DIRTY, set B_VALID.
// Else if B_VALID is not set, read buf from disk, set B_VALID.
pub fn iderw(b: &mut Buf) {
    if (b.flags & B_BUSY) == 0 {
        panic!("iderw: buf not busy");
    }

    if (b.flags & (B_VALID | B_DIRTY)) == B_VALID {
        panic!("iderw: nothing to do");
    }

    if b.dev != 1 {
        panic!("iderw: request not for disk 1");
    }

    unsafe {
        if b.sector as usize >= DISKSIZE {
            panic!("iderw: sector out of range");
        }

        
        let p = MEMDISK.add(b.sector as usize * 512);

        if (b.flags & B_DIRTY) != 0 {
            b.flags &= !B_DIRTY;
            ptr::copy_nonoverlapping(b.data.as_ptr(), p, 512);
        } else {
            ptr::copy_nonoverlapping(p, b.data.as_mut_ptr(), 512);
        }
    }

    b.flags |= B_VALID;
}
