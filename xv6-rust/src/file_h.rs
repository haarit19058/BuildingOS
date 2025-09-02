#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]

use crate::types_h::*;
use crate::fs_h;
use crate::pipe::{pipe as Pipe};

// file types
#[repr(u8)]
#[derive(Copy, Clone)]
pub enum fdtype {
    FD_NONE = 0,
    FD_PIPE,
    FD_INODE,
}

// In-memory file structure
#[derive(Copy, Clone)]
pub struct file {
    pub type_: fdtype,      // file type
    pub ref_count: uint,     // reference count
    pub readable: bool,
    pub writable: bool,
    pub pipe: *mut Pipe,  // raw pointer to pipe
    pub ip: Option<*mut inode>,   // raw pointer to inode
    pub off: uint,
}

impl file {
    pub const fn new() -> Self {
        file {
            type_: fdtype::FD_NONE,   // assumes you have a "none" variant
            ref_count: 0,
            readable: false,
            writable: false,
            pipe: core::ptr::null_mut(),
            ip: None,
            off: 0,
        }
    }
}



// In-memory inode
pub struct inode {
    pub dev: uint,          // device number
    pub inum: uint,         // inode number
    pub ref_count: uint,    // reference count
    pub flags: uint,        // I_BUSY, I_VALID

    pub type_: uint16,        // copy of disk inode
    pub major: uint16,
    pub minor: uint16,
    pub nlink: uint16,
    pub size: uint,
    pub addrs: [uint; (fs_h::NDIRECT + 1 )as usize],
}

// inode flags
pub const I_BUSY: uint = 0x1;
pub const I_VALID: uint = 0x2;

// Device switch table
pub struct devsw {
    pub read: Option<unsafe fn(ip: *mut inode, buf: *mut u8, n: usize) -> isize>,
    pub write: Option<unsafe fn(ip: *mut inode, buf: *const u8, n: usize) -> isize>,
}


// Console major device number
pub const CONSOLE: uint = 1;

// External declaration
extern "C" {
    // something is wrong here look at it thoroughly
    pub static mut devsw: [devsw;10];
}

// Placeholder for pipe struct
// pub struct pipe {
//     // fields defined elsewhere
// }
