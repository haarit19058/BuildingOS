// mmu.rs
#![allow(non_snake_case)]
#![allow(non_upper_case_globals)]
#![allow(dead_code)]

use crate::types_h; // expects `pub type types_h::uint = u32;` etc.

/// MMU (Memory Management Unit) related constants and helpers.
///
/// Notes:
/// - `types_h::uint` is used to mirror the original C `types_h::uint` (u32) used in xv6.
/// - Internally we do arithmetic in `u32` where pointer-sized math matters,
///   but most constants and APIs mirror the original `types_h::uint` (u32).
/// - `wrapping_*` is used to match low-level behavior (no overflow panics).

// -----------------------------
// align_up / align_dn
// -----------------------------
// original macros:
// #define align_up(sz, al) (((types_h::uint)(sz)+ (types_h::uint)(al)-1) & ~((types_h::uint)(al)-1))
// #define align_dn(sz, al) ((types_h::uint)(sz) & ~((types_h::uint)(al)-1))
#[inline(always)]
pub const fn align_up(sz: types_h::uint, al: types_h::uint) -> types_h::uint {
    // al must be power of two
    (sz.wrapping_add(al).wrapping_sub(1)) & !(al.wrapping_sub(1))
}

#[inline(always)]
pub const fn align_dn(sz: types_h::uint, al: types_h::uint) -> types_h::uint {
    sz & !(al.wrapping_sub(1))
}

/// u32 variants (useful for pointer arithmetic)
#[inline(always)]
pub const fn align_up_usize(sz: u32, al: u32) -> u32 {
    (sz + al - 1) & !(al - 1)
}

#[inline(always)]
pub const fn align_dn_usize(sz: u32, al: u32) -> u32 {
    sz & !(al - 1)
}

// -----------------------------
// Overview / Comments (kept from original for reference)
// -----------------------------
// The MMU translates virtual -> physical using page tables.
// ARM uses a two-level page table: 1st-level (PDE) covers 1MB sections,
// 2nd-level (PTE) covers 4KB pages.

// -----------------------------
// Access permissions (AP) and domain definitions
// -----------------------------
pub const AP_NA: types_h::uint   = 0x00; // no access
pub const AP_KO: types_h::uint   = 0x01; // privileged: kernel RW, user no access
pub const AP_KUR: types_h::uint  = 0x02; // kernel RW, user read-only
pub const AP_KU: types_h::uint   = 0x03; // full access (kernel+user)

// Domain definitions
pub const DM_NA: types_h::uint      = 0x00; // domain fault
pub const DM_CLIENT: types_h::uint  = 0x01; // checked against page table
pub const DM_RESRVED: types_h::uint = 0x02; // reserved
pub const DM_MANAGER: types_h::uint = 0x03; // no access checks

// Cache / Buffer bits
pub const PE_CACHE: types_h::uint = 1 << 3; // cacheable
pub const PE_BUF:   types_h::uint = 1 << 2; // bufferable

// Page type masks / values
pub const PE_TYPES: types_h::uint = 0x03;
pub const KPDE_TYPE: types_h::uint = 0x02; // section (1MB) for kernel PDE
pub const UPDE_TYPE: types_h::uint = 0x01; // coarse page table (points to L2) for user PDE
pub const PTE_TYPE:  types_h::uint = 0x02; // user page type (PTE entry low bits)

// -----------------------------
// Page table sizing and helpers
// -----------------------------
pub const PDE_SHIFT: u32 = 20;                       // bits shifted to get PDE index
pub const PDE_SZ:   u32  = 1 << PDE_SHIFT;           // 1 MB
pub const PDE_MASK: u32  = PDE_SZ - 1;               // offset within section

#[inline(always)]
pub const fn PDE_IDX(v: types_h::uint) -> types_h::uint {
    (v >> PDE_SHIFT) as types_h::uint
}

pub const PTE_SHIFT: u32 = 12; // bits shifted to get PTE index (4KB pages)
#[inline(always)]
pub const fn PTE_IDX(v: types_h::uint) -> types_h::uint {
    // ((types_h::uint)(v) >> PTE_SHIFT) & (NUM_PTE - 1)
    (v >> PTE_SHIFT) & (NUM_PTE.wrapping_sub(1))
}

pub const PTE_SZ: types_h::uint = 1 << PTE_SHIFT;
#[inline(always)]
pub const fn PTE_ADDR(v: types_h::uint) -> types_h::uint {
    // align_dn (v, PTE_SZ)
    align_dn(v, PTE_SZ)
}

#[inline(always)]
pub const fn PTE_AP(pte: types_h::uint) -> types_h::uint {
    // (((pte) >> 4) & 0x03)
    (pte >> 4) & 0x03
}

// -----------------------------
// Sizes for two-level page tables
// -----------------------------
// UADDR_BITS 28 => 256MB user space (as in original)
pub const UADDR_BITS: u32 = 28;
pub const UADDR_SZ:   u32 = 1 << UADDR_BITS;

// NUM_UPDE = 1 << (UADDR_BITS - PDE_SHIFT)
pub const NUM_UPDE: types_h::uint = 1 << (UADDR_BITS - PDE_SHIFT);
pub const NUM_PTE:  types_h::uint = 1 << (PDE_SHIFT - PTE_SHIFT); // entries pe_


// assuming NUM_PTE is defined somewhere else
pub const PT_SZ: u32 = NUM_PTE << 2;   // user page table size (1K)

/// Physical address of the Page Table (align down to PT_SZ boundary)
#[inline(always)]
pub fn PT_ADDR(v: u32) -> u32 {
    align_dn(v, PT_SZ)
}

pub const PT_ORDER: u32 = 10;