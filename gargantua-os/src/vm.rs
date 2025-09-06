#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]
#![allow(non_upper_case_globals)]
#![allow(unused_mut)]

use core::ptr;
use core::arch::asm;
use crate::{cprintf, panic_wait};
use core::ffi::c_void;

// use crate::memlayout::u32;
use crate::{mmu, spinlock, arm, memlayout};
use crate::buddy; // alloc_page / free_page / kmalloc / kfree

// external functions / symbols assumed to exist in other modules
// e.g. readi (from fs), panic! (from defs)
// extern "C" {
//     fn readi(ip: *mut file_h::inode, dst: *mut u8, off: u32, n: u32) -> u32;
//     fn panic!(msg: *const i8) -> !;
// }

// symbols from linker (kernel.ld)
extern "C" {
    static mut _kernel_pgtbl: u32; // first-level table symbol
    static mut data: u8; // provided by linker
}

// global kernel page directory pointer (for scheduler etc.)
pub static mut kpgdir: *mut u32 = ptr::null_mut();

// small run-block for page-table allocator
#[repr(C)]
struct Run {
    next: *mut Run,
}

#[repr(C)]
struct KptMem {
    lock: spinlock::spinlock,
    freelist: *mut Run,
}

static mut KPT_MEM: KptMem = KptMem {
    lock: spinlock::spinlock::new(),
    freelist: ptr::null_mut(),
};

// initialize vmm infrastructure
pub unsafe fn init_vmm() {
    KPT_MEM.lock.init(b"vm\0".as_ptr());
    KPT_MEM.freelist = ptr::null_mut();
}

// internal push a chunk onto free list
unsafe fn _kpt_free(v: *mut u8) {
    let r = v as *mut Run;
    // cprintf!("kpt_free: push");
    (*r).next = KPT_MEM.freelist;
    KPT_MEM.freelist = r;
}

pub unsafe fn kpt_free(v: *mut u8) {
    use memlayout::P2V;
    use memlayout::INIT_KERNMAP;

    if (v as usize) >= (P2V(INIT_KERNMAP as u32) as usize) {
        // came from normal buddy allocator
        buddy::kfree(v as *mut c_void, mmu::PT_ORDER as u32);
        return;
    }

    KPT_MEM.lock.acquire();
    _kpt_free(v);
    KPT_MEM.lock.release();
}

pub unsafe fn kpt_freerange(mut low: u32, hi: u32) {
    use mmu::PT_SZ;

    while low < hi {
        _kpt_free(low as *mut u8);
        low = low.wrapping_add(PT_SZ as u32);
    }
    cprintf!("kpt_freerange: low {} high {}", low, hi);
}

pub unsafe fn kpt_alloc() -> *mut u32 {
    KPT_MEM.lock.acquire();
    let mut r = KPT_MEM.freelist;
    if !r.is_null() {
        KPT_MEM.freelist = (*r).next;
    }
    KPT_MEM.lock.release();

    if r.is_null() {
        // allocate using buddy allocator: request a PT_ORDER-sized chunk
        let p = buddy::kmalloc(mmu::PT_ORDER as u32);
        if p.is_null() {
            panic!("oom: kpt_alloc\0");
        }
        r = p as *mut Run;
    }

    // clear the returned page (pt page)
    let r_ptr = r as *mut u8;
    // equivalent to memset(r, 0, PT_SZ)
    ptr::write_bytes(r_ptr, 0, mmu::PT_SZ as usize);

    r as *mut u32
}

// Walk page directory and return pointer to PTE for va. If alloc != 0, allocate page table page when missing
pub unsafe fn walkpgdir(pgdir: *mut u32, va: u32, alloc: i32) -> *mut u32 {
    use mmu::{PDE_IDX, PTE_IDX, PT_ADDR, PE_TYPES, UPDE_TYPE};

    let pde = &mut *pgdir.add(PDE_IDX(va) as usize) as *mut u32;

    if ((*pde) & (PE_TYPES as u32)) != 0 {
        let pgtab = PT_ADDR(*pde) as *mut u32;
        return pgtab.add(PTE_IDX(va) as usize);
    } else {
        if alloc == 0 {
            return ptr::null_mut();
        }
        let pgtab = kpt_alloc();
        if pgtab.is_null() {
            return ptr::null_mut();
        }
        // kpt_alloc already returns a zeroed page-table page

        // store PDE: physical address of pgtab | UPDE_TYPE
        *pde = (memlayout::V2P(pgtab) as u32) | (UPDE_TYPE as u32);

        return pgtab.add(PTE_IDX(va) as usize);
    }
}

pub unsafe fn mappages(pgdir: *mut u32, va: *mut c_void, size: u32, mut pa: u32, ap: i32) -> i32 {
    use mmu::{PTE_SZ, align_dn};

    let mut a = align_dn(va as u32, PTE_SZ);
    let last = align_dn((va as u32).wrapping_add(size.wrapping_sub(1)), PTE_SZ);

    loop {
        let pte = walkpgdir(pgdir, a, 1);
        if pte.is_null() {
            return -1;
        }

        if ((*pte) & (mmu::PE_TYPES as u32)) != 0 {
            panic!("remap\0");
        }

        // set pte = pa | ((ap & 0x3) << 4) | PE_CACHE | PE_BUF | PTE_TYPE
        let val = (pa as u32)
            | (((ap & 0x3) as u32) << 4)
            | (mmu::PE_CACHE as u32)
            | (mmu::PE_BUF as u32)
            | (mmu::PTE_TYPE as u32);
        *pte = val;

        if a == last {
            break;
        }
        a = a.wrapping_add(PTE_SZ);
        pa = pa.wrapping_add(PTE_SZ);
    }

    0
}

pub unsafe fn flush_tlb() {
    core::arch::asm!(
        "dsb ish",          // Ensure completion of memory ops
        "tlbi vmalle1",     // Invalidate all TLB entries EL1&0
        "dsb ish",          // Ensure completion of TLB invalidation
        "isb",              // Synchronize context
        options(nostack, preserves_flags)
    );
}


pub unsafe fn switchuvm(p: *mut crate::proc_h::proc) {
    use memlayout::V2P;

    arm::pushcli();

    if (*p).pgdir.is_null() {
        panic!("switchuvm: no pgdir\0");
    }

    // Convert virtual pgdir to physical address for TTBR0_EL1
    let val = (V2P((*p).pgdir) as u64) | 0; // attrs like ASID bits would go here

    // Write to TTBR0_EL1 (user translation base register)
    core::arch::asm!(
        "msr ttbr0_el1, {0}",
        "dsb ish",     // Ensure completion
        "isb",         // Synchronize context
        in(reg) val,
        options(nostack, preserves_flags)
    );

    flush_tlb();

    arm::popcli();
}


pub unsafe fn inituvm(pgdir: *mut u32, init: *const u8, sz: u32) {
    if sz >= mmu::PTE_SZ as u32 {
        panic!("inituvm: more than a page\0");
    }

    let mem: *mut c_void = buddy::alloc_page();
    if mem.is_null() {
        panic!("inituvm: alloc_page failed\0");
    }
    ptr::write_bytes(mem as *mut u8, 0, mmu::PTE_SZ as usize);

    // map virtual 0..PGSIZE to physical of mem
    if mappages(pgdir, 0 as *mut c_void, mmu::PTE_SZ as u32, memlayout::V2P(mem as *mut u32), mmu::AP_KU as i32) != 0 {
        panic!("inituvm: mappages failed\0");
    }

    // copy init data
    core::ptr::copy_nonoverlapping(init, mem as *mut u8, sz as usize);
}

// pub unsafe fn loaduvm(pgdir: *mut u32, addr: *mut u8, ip: *mut file_h::inode, offset: u32, sz: u32) -> i32 {
//     if (addr as usize) % (mmu::PTE_SZ as usize) != 0 {
//         panic!("loaduvm: addr must be page aligned\0");
//     }
//
//     let mut i: u32 = 0;
//     while i < sz {
//         let pte = walkpgdir(pgdir, addr as u32 + i as u32, 0);
//         if pte.is_null() {
//             panic!("loaduvm: address should exist\0");
//         }
//         let pa = mmu::PTE_ADDR(*pte) as u32;
//         let n = if sz - i < mmu::PTE_SZ as u32 { sz - i } else { mmu::PTE_SZ as u32 };
//         if readi(ip, memlayout::P2V(pa) as *mut u8, offset.wrapping_add(i), n) != n as u32 {
//             return -1;
//         }
//         i = i.wrapping_add(mmu::PTE_SZ as u32);
//     }
//
//     0
// }

pub unsafe fn allocuvm(pgdir: *mut u32, oldsz: u32, newsz: u32) -> u32 {
    if newsz >= mmu::UADDR_SZ as u32 {
        return 0;
    }
    if newsz <= oldsz {
        return oldsz;
    }

    let mut a = mmu::align_up(oldsz, mmu::PTE_SZ as u32);
    while a < newsz {
        let mem = buddy::alloc_page();
        if mem.is_null() {
            // out of memory: free pages we allocated in this loop
            deallocuvm(pgdir, a, oldsz);
            return 0;
        }
        ptr::write_bytes(mem as *mut u8, 0, mmu::PTE_SZ as usize);
        if mappages(pgdir, a as *mut c_void, mmu::PTE_SZ as u32, memlayout::V2P(mem as *mut u32), mmu::AP_KU as i32) != 0 {
            // cleanup partially allocated pages
            deallocuvm(pgdir, a.wrapping_add(mmu::PTE_SZ as u32), oldsz);
            return 0;
        }
        a = a.wrapping_add(mmu::PTE_SZ as u32);
    }
    newsz
}

pub unsafe fn deallocuvm(pgdir: *mut u32, oldsz: u32, newsz: u32) -> u32 {
    if newsz >= oldsz {
        return oldsz;
    }

    let mut a = mmu::align_up(newsz, mmu::PTE_SZ as u32);
    while a < oldsz {
        let pte = walkpgdir(pgdir, a, 0);
        if pte.is_null() {
            // round up to next page directory boundary
            a = mmu::align_up(a, mmu::PDE_SZ as u32);
            continue;
        }
        if ((*pte) & (mmu::PE_TYPES as u32)) != 0 {
            let pa = mmu::PTE_ADDR(*pte) as u32;
            if pa == 0 {
                panic!("deallocuvm");
            }
            buddy::free_page(memlayout::P2V(pa) as *mut c_void);
            *pte = 0 as u32;
        }
        a = a.wrapping_add(mmu::PTE_SZ as u32);
    }

    newsz
}

pub unsafe fn freevm(pgdir: *mut u32) {
    if pgdir.is_null() {
        panic!("freevm: no pgdir\0");
    }

    deallocuvm(pgdir, mmu::UADDR_SZ as u32, 0);

    for i in 0..(mmu::NUM_UPDE as usize) {
        let entry = *pgdir.add(i);
        if (entry & (mmu::PE_TYPES as u32)) != 0 {
            let v = memlayout::P2V(mmu::PT_ADDR(entry) as u32) as *mut u8;
            kpt_free(v);
        }
    }

    kpt_free(pgdir as *mut u8);
}

pub unsafe fn clearpteu(pgdir: *mut u32, uva: *mut u8) {
    let pte = walkpgdir(pgdir, uva as u32, 0);
    if pte.is_null() {
        panic!("clearpteu");
    }
    // change AP field to AP_KO
    *pte = (*pte & !((0x03 as u32) << 4)) | ((mmu::AP_KO as u32) << 4);
}

pub unsafe fn copyuvm(pgdir: *mut u32, sz: u32) -> *mut u32 {
    // allocate new page directory page
    let d = kpt_alloc();
    if d.is_null() {
        return ptr::null_mut();
    }

    // copy kernel portion of page directory (keep kernel mappings)
    // kernel PDEs are assumed to be above NUM_UPDE
    for i in (mmu::NUM_UPDE as usize)..(mmu::NUM_PDE as usize) {
        *d.add(i) = *pgdir.add(i);
    }

    let mut i: u32 = 0;
    while i < sz {
        let pte = walkpgdir(pgdir, i, 0);
        if pte.is_null() {
            panic!("copyuvm: pte should exist\0");
        }
        if ((*pte) & (mmu::PE_TYPES as u32)) == 0 {
            panic!("copyuvm: page not present\0");
        }

        let pa = mmu::PTE_ADDR(*pte) as u32;
        let ap = mmu::PTE_AP(*pte);

        let mem = buddy::alloc_page();
        if mem.is_null() {
            // cleanup
            freevm(d);
            return ptr::null_mut();
        }

        core::ptr::copy_nonoverlapping(memlayout::P2V(pa) as *const u8, mem as *mut u8, mmu::PTE_SZ as usize);

        if mappages(d, i as *mut c_void, mmu::PTE_SZ as u32, memlayout::V2P(mem as *mut u32), ap as i32) < 0 {
            freevm(d);
            return ptr::null_mut();
        }

        i = i.wrapping_add(mmu::PTE_SZ as u32);
    }

    d
}

pub unsafe fn uva2ka(pgdir: *mut u32, uva: *mut u8) -> *mut u8 {
    let pte = walkpgdir(pgdir, uva as u32, 0);
    if pte.is_null() || ((*pte) & (mmu::PE_TYPES as u32)) == 0 {
        return ptr::null_mut();
    }
    if mmu::PTE_AP(*pte) != mmu::AP_KU {
        return ptr::null_mut();
    }
    memlayout::P2V(mmu::PTE_ADDR(*pte) as u32) as *mut u8
}

pub unsafe fn copyout(
    pgdir: *mut u32,
    mut va: u32,
    p: *const core::ffi::c_void,
    mut len: u32,
) -> i32 {
    let mut buf = p as *const u8;

    while len > 0 {
        // page-align the virtual address
        let va0 = mmu::align_dn(va, mmu::PTE_SZ as u32);
        let pa0 = uva2ka(pgdir, va0 as *mut u8);

        if pa0.is_null() {
            return -1;
        }

        // number of bytes left in this page
        let mut n = mmu::PTE_SZ as u32 - (va - va0);
        if n > len {
            n = len;
        }

        // copy bytes into kernel space
        core::ptr::copy_nonoverlapping(
            buf,
            pa0.add((va - va0) as usize),
            n as usize,
        );

        // advance pointers
        len = len.wrapping_sub(n);
        buf = buf.add(n as usize);
        va = va.wrapping_add(n);
    }

    0
}


pub unsafe fn paging_init(phy_low: u32, phy_hi: u32) {
    // Map the kernel initial page table one-to-one for [phy_low, phy_hi)
    let base = (&mut _kernel_pgtbl) as *mut u32;
    let vbase = memlayout::P2V(base as u32);

    // map virtual P2V(phy_low) .. P2V(phy_hi) to physical phy_low .. phy_hi
    let pgdir = vbase as *mut u32;
    let vaddr = memlayout::P2V(phy_low) as *mut c_void;
    let size = phy_hi.wrapping_sub(phy_low);

    if mappages(pgdir, vaddr, size, phy_low, mmu::AP_KU as i32) != 0 {
        panic!("paging_init: mappages failed\0");
    }
    flush_tlb();
}

// NOTE: This translation is a best-effort conversion of the original C `vm.c` into Rust.
// Some helper functions, types and module boundaries are assumed (mmu, inode, defs, etc.).
// A few places (notably copyout loop mutation) include placeholders and will need small edits to compile
// against the rest of your kernel crate. Use this file as a starting point and refine to satisfy your
// project's actual module APIs and safety constraints.
