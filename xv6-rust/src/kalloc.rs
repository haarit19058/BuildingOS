// kalloc.rs
#![allow(dead_code)]
#![allow(non_camel_case_types)]

use core::ptr;
use core::ffi::c_void;

use crate::types_h::*;        // uint, etc.
use crate::param_h::*;
use crate::memlayout_h::*;    // align_up (or align_up_usize) and possibly PG_SIZE
use crate::mmu_h::*;          // v2p, PTE_SZ, PHYSTOP
use crate::spinlock_h::*;     // spinlock type
use crate::arm_h::*;

// extern symbol provided by linker script
extern "C" {
    static mut end: u8; // first address after kernel loaded from ELF
}

#[repr(C)]
struct run {
    next: *mut run,
}

static mut kmem: Kmem = Kmem {
    lock: spinlock {
        locked: 0,
        name: ptr::null(),
        cpu: ptr::null_mut(),
        pcs: [0; 10],
    },
    use_lock: 0,
    freelist: ptr::null_mut(),
};

#[repr(C)]
struct Kmem {
    lock: spinlock,
    use_lock: i32,
    freelist: *mut run,
}

pub fn kmem_init() {
    unsafe {
        initlock(&mut kmem.lock as *mut spinlock, b"kmem\0".as_ptr() as *const i8);
        kmem.use_lock = 0;
    }
}

pub fn kinit1(vstart: *mut c_void, vend: *mut c_void) {
    unsafe {
        freerange(vstart, vend);
    }
}

pub fn kinit2(vstart: *mut c_void, vend: *mut c_void) {
    unsafe {
        freerange(vstart, vend);
        kmem.use_lock = 1;
    }
}

pub unsafe fn freerange(vstart: *mut c_void, vend: *mut c_void) {
    // align_up expects addresses as usize; PTE_SZ provided by mmu
    let mut p = align_up_usize(vstart as usize, PTE_SZ as usize) as *mut u8;
    let vend_u8 = vend as *mut u8;

    while (p as usize).wrapping_add(PTE_SZ as usize) <= (vend_u8 as usize) {
        kfree(p);
        p = (p as usize + PTE_SZ as usize) as *mut u8;
    }
}

pub unsafe fn kfree(v: *mut u8) {
    if ((v as uint) % (PTE_SZ as uint) != 0)
        || (v < &mut end as *mut u8)
        || (v2p(v as *const c_void) >= PHYSTOP as uint)
    {
        cprintf(b"kfree(0x%x)\n\0".as_ptr() as *const i8, v as uint);
        panic(b"kfree\0".as_ptr() as *const i8);
    }

    // If you want to fill freed page with junk, you can call memset here.
    // memset(v as *mut c_void, 0x00, PG_SIZE);

    if kmem.use_lock != 0 {
        acquire(&mut kmem.lock as *mut spinlock);
    }

    let r = v as *mut run;
    (*r).next = kmem.freelist;
    kmem.freelist = r;

    if kmem.use_lock != 0 {
        release(&mut kmem.lock as *mut spinlock);
    }
}

pub unsafe fn kalloc() -> *mut u8 {
    if kmem.use_lock != 0 {
        acquire(&mut kmem.lock as *mut spinlock);
    }

    let r = kmem.freelist;
    if !r.is_null() {
        kmem.freelist = (*r).next;
    }

    if kmem.use_lock != 0 {
        release(&mut kmem.lock as *mut spinlock);
    }

    r as *mut u8
}
