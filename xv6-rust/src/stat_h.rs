#![allow(non_camel_case_types)]
#![allow(non_snake_case)]

use crate::memlayout_h::uint;
use crate::types_h::*;

// File types
pub const T_DIR: uint16  = 1; // Directory
pub const T_FILE: uint16 = 2; // File
pub const T_DEV: uint16  = 3; // Device

// File stat structure
#[repr(C)]
pub struct stat {
    pub type_: uint16,   // Type of file (matches C "short")
    pub dev: uint,     // File system's disk device
    pub ino: uint,     // Inode number
    pub nlink: uint16,   // Number of links to file
    pub size: uint,    // Size of file in bytes
}
