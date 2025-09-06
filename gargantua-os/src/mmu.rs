// mmu.rs
#![allow(non_snake_case)]
#![allow(non_upper_case_globals)]
#![allow(dead_code)]

// use crate::u32xpects `pub type u32 = u32;` etc.

/// MMU (Memory Management Unit) related constants and helpers.
///
/// Notes:
/// - `u32` is used to mirror the original C `u32` (u32) used in xv6.
/// - Internally we do arithmetic in `u32` where pointer-sized math matters,
///   but most constants and APIs mirror the original `u32` (u32).
/// - `wrapping_*` is used to match low-level behavior (no overflow panics).

// -----------------------------
// align_up / align_dn
// -----------------------------
// original macros:
// #define align_up(sz, al) (((u32)(sz)+ (u32)(al)-1) & ~((u32)(al)-1))
// #define align_dn(sz, al) ((u32)(sz) & ~((u32)(al)-1))
#[inline(always)]
pub const fn align_up(sz: u32, al: u32) -> u32 {
    // al must be power of two
    (sz.wrapping_add(al).wrapping_sub(1)) & !(al.wrapping_sub(1))
}

#[inline(always)]
pub const fn align_dn(sz: u32, al: u32) -> u32 {
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
pub const AP_NA: u32   = 0x00; // no access
pub const AP_KO: u32   = 0x01; // privileged: kernel RW, user no access
pub const AP_KUR: u32  = 0x02; // kernel RW, user read-only
pub const AP_KU: u32   = 0x03; // full access (kernel+user)

// Domain definitions
pub const DM_NA: u32      = 0x00; // domain fault
pub const DM_CLIENT: u32  = 0x01; // checked against page table
pub const DM_RESRVED: u32 = 0x02; // reserved
pub const DM_MANAGER: u32 = 0x03; // no access checks

// Cache / Buffer bits
pub const PE_CACHE: u32 = 1 << 3; // cacheable
pub const PE_BUF:   u32 = 1 << 2; // bufferable

// Page type masks / values
pub const PE_TYPES: u32 = 0x03;
pub const KPDE_TYPE: u32 = 0x02; // section (1MB) for kernel PDE
pub const UPDE_TYPE: u32 = 0x01; // coarse page table (points to L2) for user PDE
pub const PTE_TYPE:  u32 = 0x02; // user page type (PTE entry low bits)

// -----------------------------
// Page table sizing and helpers
// -----------------------------
pub const PDE_SHIFT: u32 = 20;                       // bits shifted to get PDE index
pub const PDE_SZ:   u32  = 1 << PDE_SHIFT;           // 1 MB
pub const PDE_MASK: u32  = PDE_SZ - 1;               // offset within section

#[inline(always)]
pub const fn PDE_IDX(v: u32) -> u32 {
    (v >> PDE_SHIFT) as u32
}

pub const PTE_SHIFT: u32 = 12; // bits shifted to get PTE index (4KB pages)
#[inline(always)]
pub const fn PTE_IDX(v: u32) -> u32 {
    // ((u32)(v) >> PTE_SHIFT) & (NUM_PTE - 1)
    (v >> PTE_SHIFT) & (NUM_PTE.wrapping_sub(1))
}

pub const PTE_SZ: u32 = 1 << PTE_SHIFT;
#[inline(always)]
pub const fn PTE_ADDR(v: u32) -> u32 {
    // align_dn (v, PTE_SZ)
    align_dn(v, PTE_SZ)
}

#[inline(always)]
pub const fn PTE_AP(pte: u32) -> u32 {
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
pub const NUM_UPDE: u32 = 1 << (UADDR_BITS - PDE_SHIFT);
pub const NUM_PTE:  u32 = 1 << (PDE_SHIFT - PTE_SHIFT); // entries pe_


// assuming NUM_PTE is defined somewhere else
pub const PT_SZ: u32 = NUM_PTE << 2;   // user page table size (1K)

/// Physical address of the Page Table (align down to PT_SZ boundary)
#[inline(always)]
pub fn PT_ADDR(v: u32) -> u32 {
    align_dn(v, PT_SZ)
}


// as usize for indexing / iteration
pub const NUM_PDE: usize = 1 << (32 - PDE_SHIFT as usize);

// or, if you prefer a u32 constant
pub const NUM_PDE_U32: u32 = 1 << (32 - PDE_SHIFT);


pub const PT_ORDER: u32 = 10;