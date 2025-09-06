#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]
#![allow(non_upper_case_globals)]

use core::ptr;
use core::mem::size_of;
use core::ffi::c_void;

use crate::{mmu};
use crate::spinlock;

pub const MAX_ORD: u32 = 12;
pub const MIN_ORD: u32 = 6;
pub const N_ORD_USIZE: usize = (MAX_ORD - MIN_ORD + 1) as usize;

#[repr(C)]
pub struct mark {
    pub lnks:  u32,
    pub bitmap: u32,
}

#[inline(always)]
fn PRE_LNK(lnks: u32) -> u32 { lnks >> 16 }
#[inline(always)]
fn NEXT_LNK(lnks: u32) -> u32 { lnks & 0xFFFF }
#[inline(always)]
fn LNKS(pre: u32, next: u32) -> u32 { (pre << 16) | (next & 0xFFFF) }
pub const NIL: u32 = 0xFFFF;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct order {
    pub head:   u32,
    pub offset: u32,
}

#[repr(C)]
pub struct kmem {
    pub lock: spinlock::spinlock,
    pub start: u32,
    pub start_heap: u32,
    pub end: u32,
    pub orders: [order; N_ORD_USIZE],
}

static mut KMEM: kmem = kmem {
    lock: spinlock::spinlock::new(),
    start: 0,
    start_heap: 0,
    end: 0,
    orders: [order { head: 0, offset: 0 }; N_ORD_USIZE],
};

#[inline(always)]
unsafe fn get_mark(order_: u32, idx: u32) -> *mut mark {
    let base = KMEM.start as *mut mark;
    let off_idx = (KMEM.orders[(order_ - MIN_ORD) as usize].offset as u32)
        .wrapping_add(idx as u32);
    base.add(off_idx as usize)
}

#[inline(always)]
unsafe fn blkid2mem(order_: u32, blkid: u32) -> *mut c_void {
    ((KMEM.start_heap as usize) + ((1usize << (order_ as usize)) * (blkid as usize))) as *mut c_void
}

#[inline(always)]
unsafe fn mem2blkid(order_: u32, mem: *mut c_void) -> u32 {
    (((mem as u32) - KMEM.start_heap) >> order_) as u32
}

#[inline(always)]
fn available(bitmap: u32, blk_id: u32) -> bool {
    (bitmap & (1 << (blk_id & 0x1F))) != 0
}

pub unsafe fn kmem_init() {
    // unsafe {
        KMEM.lock.init(b"KMEM\0".as_ptr());
        KMEM.start = 0;
        KMEM.start_heap = 0;
        KMEM.end = 0;
    // }
}

pub unsafe fn kmem_init2(vstart: *mut c_void, vend: *mut c_void) {
    let mut i: isize;
    let mut j: u32;
    let mut total: u32;
    let mut n: u32;
    let  len: u32;
    let mut ord_ptr: *mut order;
    let mut mk: *mut mark;

    KMEM.start = vstart as u32;
    KMEM.end = vend as u32;
    len = KMEM.end - KMEM.start;

    n = ((len as u32) >> (MAX_ORD as u32 + 5)) + 1;
    total = 0;

    i = (N_ORD_USIZE as isize) - 1;
    while i >= 0 {
        ord_ptr = &mut KMEM.orders[i as usize] as *mut order;
        (*ord_ptr).offset = total;
        (*ord_ptr).head = NIL as u32;

        j = 0;
        while j < n as u32 {
            mk = get_mark((i as u32) + MIN_ORD, j);
            (*mk).lnks = LNKS(NIL as u32, NIL as u32);
            (*mk).bitmap = 0;
            j = j.wrapping_add(1);
        }

        total = total.wrapping_add(n);
        n = n << 1;
        i -= 1;
    }

    let mk_size = size_of::<mark>();
    KMEM.start_heap = mmu::align_up(KMEM.start + (total as u32 * mk_size as u32), 1 << MAX_ORD);

    let mut addr = KMEM.start_heap;
    while addr < KMEM.end {
        kfree(addr as *mut c_void, MAX_ORD as u32);
        addr = addr.wrapping_add(1 << MAX_ORD);
    }
}

unsafe fn unmark_blk(order_: u32, blk_id: u32) {
    let ord = &mut KMEM.orders[(order_ - MIN_ORD) as usize] as *mut order;
    let mk = get_mark(order_, blk_id >> 5);
    let  prev: u32;
    let  next: u32;
    let mut p: *mut mark;

    if !available((*mk).bitmap as u32, blk_id) {
        // panic(b"double alloc\n\0".as_ptr() as *const i8);
    }

    (*mk).bitmap &= !(1 << (blk_id & 0x1F));

    if (*mk).bitmap == 0 {
        let  blk = blk_id >> 5;
        prev = PRE_LNK((*mk).lnks) as u32;
        next = NEXT_LNK((*mk).lnks) as u32;

        if prev != NIL as u32 {
            p = get_mark(order_, prev);
            (*p).lnks = LNKS(PRE_LNK((*p).lnks), next as u32);
        } else if (*ord).head as u32 == blk {
            (*ord).head = next as u32;
        }

        if next != NIL as u32 {
            p = get_mark(order_, next);
            (*p).lnks = LNKS(prev as u32, NEXT_LNK((*p).lnks));
        }

        (*mk).lnks = LNKS(NIL as u32, NIL as u32);
    }
}

unsafe fn mark_blk(order_: u32, blk_id: u32) {
    let ord = &mut KMEM.orders[(order_ - MIN_ORD) as usize] as *mut order;
    let mk = get_mark(order_, blk_id >> 5);
    let  p: *mut mark;

    let insert = ( (*mk).bitmap == 0) as u32 ;

    if available((*mk).bitmap as u32, blk_id) {
        // panic(b"double free\n\0".as_ptr() as *const i8);
    }

    (*mk).bitmap |= 1 << (blk_id & 0x1F);

    if insert != 0 {
        let  idx = blk_id >> 5;
        (*mk).lnks = LNKS(NIL as u32, (*ord).head);
        if (*ord).head != NIL as u32 {
            p = get_mark(order_, (*ord).head as u32);
            (*p).lnks = LNKS(idx as u32, NEXT_LNK((*p).lnks));
        }
        (*ord).head = idx as u32;
    }
}

unsafe fn get_blk(order_: u32) -> *mut c_void {
    let ord = &mut KMEM.orders[(order_ - MIN_ORD) as usize];
    if ord.head == NIL as u32 {
        return ptr::null_mut();
    }
    let mk = get_mark(order_, ord.head as u32);

    if (*mk).bitmap == 0 {
        // panic(b"empty mark in the list\n\0".as_ptr() as *const i8);
    }

    let mut i = 0usize;
    while i < 32 {
        if ((*mk).bitmap & (1 << i)) != 0 {
            let blk_id = (ord.head as u32) * 32 + i as u32;
            unmark_blk(order_, blk_id);
            return blkid2mem(order_, blk_id);
        }
        i += 1;
    }

    ptr::null_mut()
}

// extern "C" {
//     fn _kfree(mem: *mut c_void, order: u32);
// }

unsafe fn _kmalloc(order_: u32) -> *mut c_void {
    let ord = &mut KMEM.orders[(order_ - MIN_ORD) as usize];
    let mut up: *mut c_void = ptr::null_mut();

    if ord.head != NIL as u32 {
        up = get_blk(order_);
    } else if order_ < MAX_ORD as u32 {
        up = _kmalloc(order_ + 1);
        if !up.is_null() {
            kfree(( (up as *mut u8).add(1 << order_) ) as *mut c_void, order_);
        }
    }

    up
}

pub fn kmalloc(order_: u32) -> *mut c_void {
    if order_ > MAX_ORD as u32 || order_ < MIN_ORD as u32 {
        // panic(b"kmalloc: order out of range\n\0".as_ptr() as *const i8);
    }

    unsafe {
        KMEM.lock.acquire();
        let up = _kmalloc(order_);
        KMEM.lock.release();
        up
    }
}

#[no_mangle]
pub unsafe extern "C" fn _kfree_impl(mem: *mut c_void, order_: u32) {
    let blk_id = mem2blkid(order_, mem) as u32;
    let mk = get_mark(order_, blk_id >> 5);

    if available((*mk).bitmap as u32, blk_id) {
        // panic(b"kfree: double free\0".as_ptr() as *const i8);
    }

    let buddy_id = blk_id ^ 0x0001;
    if !available((*mk).bitmap as u32, buddy_id) || (order_ == MAX_ORD as u32) {
        mark_blk(order_, blk_id);
    } else {
        unmark_blk(order_, buddy_id);
        kfree((blkid2mem(order_, blk_id & !0x0001)) as *mut c_void, order_ + 1);
    }
}

pub fn kfree(mem: *mut c_void, order_: u32) {
    if order_ > MAX_ORD as u32 || order_ < MIN_ORD as u32 || ((mem as u32) & ((1 << order_) - 1) as u32) != 0 {
        // panic(b"kfree: order out of range or memory unaligned\n\0".as_ptr() as *const i8);
    }

    unsafe {
        KMEM.lock.acquire();
        kfree(mem, order_);
        KMEM.lock.release();
    }
}

pub fn free_page(v: *mut c_void) {
    kfree(v, mmu::PTE_SHIFT as u32);
}

pub fn alloc_page() -> *mut c_void {
    kmalloc(mmu::PTE_SHIFT as u32)
}

pub fn get_order(mut v: u32) -> u32 {
    let mut ord: u32;

    v = v.wrapping_sub(1);
    v |= v >> 1;
    v |= v >> 2;
    v |= v >> 4;
    v |= v >> 8;
    v |= v >> 16;
    v = v.wrapping_add(1);

    ord = 0;
    while ord < 32 {
        if (v & (1 << ord)) != 0 {
            break;
        }
        ord = ord.wrapping_add(1);
    }

    if ord < MIN_ORD as u32 {
        ord = MIN_ORD as u32;
    } else if ord > MAX_ORD as u32 {
        // panic(b"order too big!\0".as_ptr() as *const i8);
    }

    ord as u32
}
