// fs.rs - On-disk file system format.
// Both the kernel and user programs use this module.

// Block 0 is unused.
// Block 1 is super block.
// Blocks 2 through sb.ninodes/IPB hold inodes.
// Then free bitmap blocks holding sb.size bits.
// Then sb.nblocks data blocks.
// Then sb.nlog log blocks.
#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]


use crate::types_h::*;

pub const ROOTINO: uint = 1;     // root i-number
pub const BSIZE: uint = 512;     // block size (on disk, 32-bit)

// File system super block
#[repr(C)]
#[derive(Debug, Clone, Copy)]
pub struct superblock {
    pub size: uint,      // Size of file system image (blocks)
    pub nblocks: uint,   // Number of data blocks
    pub ninodes: uint,   // Number of inodes
    pub nlog: uint,      // Number of log blocks
}

pub const NDIRECT: uint = 12;
pub const NINDIRECT: uint = BSIZE / core::mem::size_of::<uint>() as uint;
pub const MAXFILE: uint = NDIRECT + NINDIRECT;

// On-disk inode structure
#[repr(C)]
#[derive(Debug, Clone, Copy)]
pub struct dinode {
    pub type_: uint16,     // File type
    pub major: uint16,     // Major device number (T_DEV only)
    pub minor: uint16,     // Minor device number (T_DEV only)
    pub nlink: uint16,     // Number of links
    pub size: uint,      // Size of file (bytes)
    pub addrs: [uint; (NDIRECT + 1) as usize], // must be usize for array
}

// Inodes per block
pub const IPB: uint = BSIZE / core::mem::size_of::<dinode>() as uint;

// Block containing inode i
#[inline(always)]
pub const fn iblock(i: uint) -> uint {
    (i / IPB) + 2
}

// Bitmap bits per block
pub const BPB: uint = BSIZE * 8;

// Block containing bit for block b
#[inline(always)]
pub const fn bblock(b: uint, ninodes: uint) -> uint {
    (b / BPB) + (ninodes / IPB) + 3
}

// Directory
pub const DIRSIZ: usize = 14;

#[repr(C)]
#[derive(Clone, Copy)]
pub struct dirent {
    pub inum: u16,
    pub name: [u8; DIRSIZ],
}
