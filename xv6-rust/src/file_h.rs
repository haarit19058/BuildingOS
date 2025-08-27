#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]

use crate::types_h::*;
use crate::fs_h;

// File types
#[repr(u8)]
pub enum fdtype {
    FD_NONE = 0,
    FD_PIPE,
    FD_INODE,
}

// In-memory file structure
pub struct File {
    pub type_: fdtype,      // file type
    pub ref_count: uint,     // reference count
    pub readable: bool,
    pub writable: bool,
    pub pipe: Option<*mut pipe>,  // raw pointer to pipe
    pub ip: Option<*mut inode>,   // raw pointer to inode
    pub off: uint,
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
    pub read: Option<unsafe fn(ip: *mut inode, buf: *mut u8, n: uint) -> uint>,
    pub write: Option<unsafe fn(ip: *mut inode, buf: *mut u8, n: uint) -> uint>,
}

// Console major device number
pub const CONSOLE: uint = 1;

// External declaration
extern "C" {
    pub static mut devsw: [devsw; /* fill with actual device count */];
}

// Placeholder for pipe struct
// pub struct pipe {
//     // fields defined elsewhere
// }
