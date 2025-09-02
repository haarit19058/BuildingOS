#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(non_upper_case_globals)]

use core::ffi::c_void;

use crate::{
    spinlock_h::spinlock,
    file_h::file,
    file::*,
    proc::*,
    // params_h::*,
    // defs_h::{filealloc, fileclose},
    // proc_h::{proc, sleep, wakeup}, // assuming proc struct + sleep/wakeup exist
    buddy::{kmalloc, kfree, get_order},
};

pub const PIPESIZE: usize = 512;

#[repr(C)]
pub struct pipe {
    pub lock: spinlock,
    pub data: [u8; PIPESIZE],
    pub nread: u32,      // number of bytes read
    pub nwrite: u32,     // number of bytes written
    pub readopen: i32,   // read fd is still open
    pub writeopen: i32,  // write fd is still open
}

impl pipe {
    pub fn new() -> *mut Self {
        unsafe {
            let p = kmalloc(get_order(core::mem::size_of::<Self>() as u32)) as *mut pipe;
            if p.is_null() {
                return core::ptr::null_mut();
            }

            (*p).readopen = 1;
            (*p).writeopen = 1;
            (*p).nread = 0;
            (*p).nwrite = 0;
            (*p).lock = spinlock::new();
            (*p).lock.init(b"pipe\0".as_ptr());
            p
        }
    }
}

unsafe fn goto_bad(p: *mut pipe, f0: *mut *mut file, f1: *mut *mut file) -> i32 {
        if !p.is_null() {
            kfree(p as *mut c_void, get_order(core::mem::size_of::<pipe>() as u32));
        }
        if !(*f0).is_null() {
            fileclose(*f0);
        }
        if !(*f1).is_null() {
            fileclose(*f1);
        }
        -1
}
/// Allocate pipe and two file descriptors
pub unsafe fn pipealloc(f0: *mut *mut file, f1: *mut *mut file) -> i32 {
    *f0 = core::ptr::null_mut();
    *f1 = core::ptr::null_mut();

    let mut p: *mut pipe = core::ptr::null_mut();

    *f0 = filealloc();
    if (*f0).is_null() {
        goto_bad(p, f0, f1);
    }

    *f1 = filealloc();
    if (*f1).is_null() {
        goto_bad(p, f0, f1);
    }

    p = pipe::new();
    if p.is_null() {
        goto_bad(p, f0, f1);
    }

    (**f0).type_ = crate::file_h::fdtype::FD_PIPE;
    (**f0).readable = 1 == 1;
    (**f0).writable = 0 == 1;
    (**f0).pipe = p ;

    (**f1).type_ = crate::file_h::fdtype::FD_PIPE;
    (**f1).readable = 0 ==1;
    (**f1).writable = 1 == 1;
    (**f1).pipe = p ;

    return 0;

    
}

pub unsafe fn pipeclose(p: *mut pipe, writable: i32) {
    (*p).lock.acquire();
    if writable != 0 {
        (*p).writeopen = 0;
        wakeup(&mut (*p).nread as *mut u32 as *mut u8);
    } else {
        (*p).readopen = 0;
        wakeup(&mut (*p).nwrite as *mut u32 as *mut u8);
    }

    if (*p).readopen == 0 && (*p).writeopen == 0 {
        (*p).lock.release();
        kfree(p as *mut c_void, get_order(core::mem::size_of::<pipe>() as u32));
    } else {
        (*p).lock.release();
    }
}

pub unsafe fn pipewrite(p: *mut pipe, addr: *const u8, n: i32) -> i32 {
    let mut i = 0;
    (*p).lock.acquire();

    while i < n {
        while (*p).nwrite == (*p).nread + PIPESIZE as u32 {
            if (*p).readopen == 0 {
                (*p).lock.release();
                return -1;
            }
            wakeup(&mut (*p).nread as *mut u32 as *mut u8);
            sleep(&mut (*p).nwrite as *mut u32 as *mut u8, &mut (*p).lock);
        }

        (*p).data[((*p).nwrite % PIPESIZE as u32) as usize] = *addr.add(i as usize);
        (*p).nwrite += 1;
        i += 1;
    }

    wakeup(&mut (*p).nread as *mut u32 as *mut u8);
    (*p).lock.release();
    n
}

pub unsafe fn piperead(p: *mut pipe, addr: *mut u8, n: i32) -> i32 {
    let mut i = 0;
    (*p).lock.acquire();

    while (*p).nread == (*p).nwrite && (*p).writeopen != 0 {
        if (*proc).killed != 0 {
            (*p).lock.release();
            return -1;
        }
        sleep(&mut (*p).nread as *mut u32 as *mut u8, &mut (*p).lock);
    }

    while i < n {
        if (*p).nread == (*p).nwrite {
            break;
        }
        *addr.add(i as usize) = (*p).data[((*p).nread % PIPESIZE as u32) as usize];
        (*p).nread += 1;
        i += 1;
    }

    wakeup(&mut (*p).nwrite as *mut u32 as *mut u8);
    (*p).lock.release();
    i
}
