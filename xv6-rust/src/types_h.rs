#![allow(non_camel_case_types)]
#![allow(non_upper_case_globals)]


pub type uint   = u32;
pub type ushort = u16;
pub type uchar  = u8;

pub type uint32 = u32;
pub type uint16 = u16;
pub type uint8  = u8;
pub type pde_t = u32;
pub type pte_t = u32;

pub const NULL: *mut core::ffi::c_void = core::ptr::null_mut();
