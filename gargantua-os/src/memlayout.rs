// kmap.rs
#![allow(non_camel_case_types)]
#![allow(non_upper_case_globals)]
#![allow(non_snake_case)]

pub type uint = u32;
pub type ushort = u16;
pub type uchar = u8;

pub const NULL: *mut core::ffi::c_void = core::ptr::null_mut();

// use crate::pra
// use core::ffi::c_void;
// use crate::types_h; // assumes `pub type u32 = u32;` etc.

/// Key addresses for address space layout (see kmap in vm.c for layout)
/// Use `u32` for pointer arithmetic (safe on 32-bit ARM; on other targets it adapts).
pub const EXTMEM:      u32 = 0x00_020000;      // 0x20000
pub const KERNBASE:    u32 = 0x8000_0000;      // First kernel virtual address
pub const KERNLINK:    u32 = KERNBASE + EXTMEM;// Address where kernel is linked
pub const INIT_KERNMAP:u32 = 0x00_100000;      // 1 MB

// -----------------------------
// Conversions: virtual <-> physical
// -----------------------------
// These mirror the C inline functions/macros:
//   static inline u32 v2p(void *a) { return ((u32) (a))  - KERNBASE; }
//   static inline void *p2v(u32 a) { return (void *) ((a) + KERNBASE); }
// and the V2P/P2V macros.
//
// NOTE: these are `unsafe` only because they perform raw pointer casts.
// The functions themselves are pure arithmetic; callers must ensure the
// input is valid (e.g. the pointer lies in kernel virtual space).

/// Convert a kernel virtual pointer to a physical address (returns `u32`, i.e. u32).
/// Safety: `a` must be a kernel virtual pointer (>= KERNBASE).
#[inline(always)]
pub fn v2p(a: *const uint) -> u32 {
    // Do arithmetic in u32, then cast to u32 (u32) to match original `u32`.
    // On a 32-bit target this is direct; on 64-bit, caller must ensure value fits.
    ((a as u32).wrapping_sub(KERNBASE)) as u32
}

/// Convert a physical address (u32 / u32) to a kernel virtual pointer.
/// Safety: the resulting pointer is a kernel virtual address (KERNBASE + a).
#[inline(always)]
pub fn p2v(a: u32) -> *mut uint {
    ( (a as u32).wrapping_add(KERNBASE) ) as *mut uint
}

/// Variants that operate on u32 (no casts). Useful inside low-level code
/// that already uses u32 for addresses.
#[inline(always)]
pub fn v2p_usize(a: u32) -> u32 { a.wrapping_sub(KERNBASE) }

#[inline(always)]
pub fn p2v_usize(a: u32) -> u32 { a.wrapping_add(KERNBASE) }

/// "Macro-like" names to match the original C macros (just function aliases)
#[inline(always)]
pub fn V2P(a: *const uint) -> u32 { v2p(a) }

#[inline(always)]
pub fn P2V(a: u32) -> *mut uint { p2v(a) }

#[inline(always)]
pub fn V2P_WO(x: u32) -> u32 { v2p_usize(x) }
#[inline(always)]
pub fn P2V_WO(x: u32) -> u32 { p2v_usize(x) }
