#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]

use crate::types_h::*;


pub const B_BUSY: uint  = 0x1; // buffer is locked by some process
pub const B_VALID: uint = 0x2; // buffer has been read from disk
pub const B_DIRTY: uint = 0x4; // buffer needs to be written to disk

pub struct buf {
    pub flags: uint,
    pub dev: uint,
    pub sector: uint,
    pub prev: Option<*mut buf>,  // LRU cache list
    pub next: Option<*mut buf>,
    pub qnext: Option<*mut buf>, // disk queue
    pub data: [u8; 512],
}

// Optional: implement default constructor
impl buf {
    pub const fn new() -> Self {
        buf {
            flags: 0,
            dev: 0,
            sector: 0,
            prev: None,
            next: None,
            qnext: None,
            data: [0; 512],
        }
    }
}
