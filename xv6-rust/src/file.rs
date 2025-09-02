#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]

use core::ptr::{self};

// use crate::types_h::*;
use crate::params_h::{ NFILE, LOGSIZE};
// use crate::fs_h;
use crate::log;
use crate::stat_h;
use crate::file_h::{ file as file, fdtype};
use crate::spinlock_h;

// Device switch table (global)
// pub static mut devsw: [devsw; NDEV as usize] = [devsw { read: None, write: None }; NDEV as usize];

pub struct ftable {
    pub lock: spinlock_h::spinlock,
    pub file: [file; NFILE as usize],
}

// Now we can statically initialize FTABLE
pub static mut FTABLE: ftable = ftable {
    lock: spinlock_h::spinlock::new(),
    file: [file::new(); NFILE as usize],
};

/// Initialize the file table (call at boot).
pub fn fileinit() {
    unsafe {
        // If your spinlock has an `init(name_ptr)` method:
        FTABLE.lock.init(b"ftable\0".as_ptr());
    }
}

/// Allocate a file structure. Returns `Some(&'static mut file)` if allocated, else `None`.
pub fn filealloc() -> *mut file {
    unsafe {
        FTABLE.lock.acquire();

        for f in FTABLE.file.iter_mut() {
            if f.ref_count == 0 {
                f.ref_count = 1;
                FTABLE.lock.release();
                // return a 'static mutable reference to the slot
                return &mut *(f as *mut file);
            }
        }

        FTABLE.lock.release();
    }
    ptr::null_mut()
}

/// Increment ref count for a file and return the same file reference.
pub unsafe fn filedup(f: *mut file) -> *mut file {
    // Acquire lock
    FTABLE.lock.acquire();

    if (*f).ref_count < 1 {
        // panic!("filedup: ref_count < 1\0".as_ptr());
    }

    (*f).ref_count += 1;

    // Release lock
    FTABLE.lock.release();

    f
}

// Close file `f`. Decrease refcount; on final close, perform cleanup depending on file type.
pub unsafe fn fileclose(f: *mut file) {
    // local shallow copy to operate on after unlocking
    let  ff: file;

    FTABLE.lock.acquire();

    if (*f).ref_count < 1 {
        // panic!("fileclose: ref_count < 1\0".as_ptr());
    }

    if (*f).ref_count > 1 {
        (*f).ref_count -= 1;
        FTABLE.lock.release();
        return;
    }

    // Last reference: take a shallow copy (safe after unlock)
    ff = core::ptr::read(f as *const file);

    // Mark slot as free
    (*f).ref_count = 0;
    (*f).type_ = fdtype::FD_NONE;

    FTABLE.lock.release();

    // Now release resources depending on type
    match ff.type_ {
        fdtype::FD_PIPE => {
            let p = ff.pipe;
            if !p.is_null() {
                crate::pipe::pipeclose(p, ff.writable as i32);
            }
        }
        fdtype::FD_INODE => {
            log::begin_trans();
            if let Some(ip) = ff.ip {
                crate::fs::iput(ip);
            }
            log::commit_trans();
        }
        _ => {}
    }
}

/// Get metadata about `f` and store into `st`. Returns 0 on success, -1 on failure.
pub unsafe fn filestat(f: &file, st: &mut stat_h::stat) -> i32 {
    match f.type_ {
        fdtype::FD_INODE => {
            if let Some(ip) = f.ip {
                unsafe {
                    crate::fs::ilock(ip);
                    crate::fs::stati(ip, st);
                    crate::fs::iunlock(ip);
                }
                0
            } else {
                -1
            }
        }
        _ => -1,
    }
}

/// Read from file into `addr` up to `n` bytes. Returns number of bytes read or -1 on error.
pub unsafe fn fileread(f: &mut file, addr: *mut u8, n: i32) -> i32 {
    if !f.readable {
        return -1;
    }

    match f.type_ {
        fdtype::FD_PIPE => {
            let p = f.pipe;
            if !p.is_null() {
                // assume piperead defined: piperead(pipe_ptr, addr, n) -> i32
                crate::pipe::piperead(p, addr, n)
            } else {
                -1
            }
        }
        fdtype::FD_INODE => {
            unsafe {
                if let Some(ip) = f.ip {
                    crate::fs::ilock(ip);
                    let r = crate::fs::readi(ip, addr, f.off, n as u32 ) ;
                    if r > 0 {
                        f.off = f.off.wrapping_add(r as u32);
                    }
                    crate::fs::iunlock(ip);
                    r
                } else {
                    -1
                }
            }
        }
        _ => {
            panic!("fileread: unexpected file type");
        }
    }
}

/// Write `n` bytes from `addr` to file. Returns number of bytes written or -1 on error.
pub unsafe fn filewrite(f: &mut file, addr: *const u8, n: i32) -> i32 {
    if !f.writable {
        return -1;
    }

    match f.type_ {
        fdtype::FD_PIPE => {
            let p = f.pipe;
            if !p.is_null() {
                crate::pipe::pipewrite(p, addr, n)
            } else {
                -1
            }
        }
        fdtype::FD_INODE => {
            // LOGSIZE is from params; this matches the xv6 logic that limits transaction size
            let max = (((LOGSIZE as i32 - 1 - 1 - 2) / 2) * 512) as i32;
            let mut i = 0;
            while i < n {
                let mut n1 = n - i;
                if n1 > max {
                    n1 = max;
                }

                unsafe {
                    log::begin_trans();
                    if let Some(ip) = f.ip {
                        crate::fs::ilock(ip);
                        let r = crate::fs::writei(ip, addr.add(i as usize), f.off as u32, n1 as u32);
                        if r > 0 {
                            f.off = f.off.wrapping_add(r as u32);
                        }
                        crate::fs::iunlock(ip);
                        log::commit_trans();

                        if r < 0 {
                            return -1;
                        }
                        if r != n1 {
                            panic!("short filewrite");
                        }
                        i += r;
                    } else {
                        log::commit_trans();
                        return -1;
                    }
                }
            }
            n
        }
        _ => {
            panic!("filewrite: unexpected file type");
        }
    }
}
