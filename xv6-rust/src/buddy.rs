#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]

use core::ptr;
use core::mem::size_of;
use core::ffi::c_void;

use crate::types_h;     // expects types_h::uint, types_h::uint32, uint16 aliases
// use crate::params_h;
// use crate::memlayout_h;
use crate::mmu_h;
use crate::spinlock_h;
// use crate::arm_h;

pub const MAX_ORD: types_h::uint = 12;
pub const MIN_ORD: types_h::uint = 6;
pub const N_ORD_USIZE: usize = (MAX_ORD - MIN_ORD + 1) as usize;

#[repr(C)]
pub struct mark {
    pub lnks:  types_h::uint32,
    pub bitmap: types_h::uint32,
}

#[inline(always)]
fn PRE_LNK(lnks: types_h::uint32) -> types_h::uint32 { lnks >> 16 }
#[inline(always)]
fn NEXT_LNK(lnks: types_h::uint32) -> types_h::uint32 { lnks & 0xFFFF }
#[inline(always)]
fn LNKS(pre: types_h::uint32, next: types_h::uint32) -> types_h::uint32 { (pre << 16) | (next & 0xFFFF) }
pub const NIL: types_h::uint16 = 0xFFFF;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct order {
    pub head:   types_h::uint32,
    pub offset: types_h::uint32,
}

#[repr(C)]
pub struct kmem {
    pub lock: spinlock_h::spinlock,
    pub start: types_h::uint,
    pub start_heap: types_h::uint,
    pub end: types_h::uint,
    pub orders: [order; N_ORD_USIZE],
}

static mut kmem: kmem = kmem {
    lock: spinlock_h::spinlock::new(),
    start: 0,
    start_heap: 0,
    end: 0,
    orders: [order { head: 0, offset: 0 }; N_ORD_USIZE],
};

#[inline(always)]
unsafe fn get_mark(order_: types_h::uint, idx: types_h::uint) -> *mut mark {
    let base = kmem.start as *mut mark;
    let off_idx = (kmem.orders[(order_ - MIN_ORD) as usize].offset as types_h::uint)
        .wrapping_add(idx as types_h::uint);
    base.add(off_idx as usize)
}

#[inline(always)]
unsafe fn blkid2mem(order_: types_h::uint, blkid: types_h::uint) -> *mut c_void {
    ((kmem.start_heap as usize) + ((1usize << (order_ as usize)) * (blkid as usize))) as *mut c_void
}

#[inline(always)]
unsafe fn mem2blkid(order_: types_h::uint, mem: *mut c_void) -> types_h::uint {
    ((((mem as types_h::uint) - kmem.start_heap) >> order_) as types_h::uint)
}

#[inline(always)]
fn available(bitmap: types_h::uint, blk_id: types_h::uint) -> bool {
    (bitmap & (1 << (blk_id & 0x1F))) != 0
}

pub fn kmem_init() {
    unsafe {
        kmem.lock.init(b"kmem\0".as_ptr());
        kmem.start = 0;
        kmem.start_heap = 0;
        kmem.end = 0;
    }
}

pub unsafe fn kmem_init2(vstart: *mut c_void, vend: *mut c_void) {
    let mut i: isize;
    let mut j: types_h::uint;
    let mut total: types_h::uint32 = 0;
    let mut n: types_h::uint32;
    let mut len: types_h::uint;
    let mut ord_ptr: *mut order;
    let mut mk: *mut mark;

    kmem.start = vstart as types_h::uint;
    kmem.end = vend as types_h::uint;
    len = kmem.end - kmem.start;

    n = ((len as types_h::uint32) >> (MAX_ORD as u32 + 5)) + 1;
    total = 0;

    i = (N_ORD_USIZE as isize) - 1;
    while i >= 0 {
        ord_ptr = &mut kmem.orders[i as usize] as *mut order;
        (*ord_ptr).offset = total;
        (*ord_ptr).head = NIL as types_h::uint32;

        j = 0;
        while j < n as types_h::uint {
            mk = get_mark((i as types_h::uint) + MIN_ORD, j);
            (*mk).lnks = LNKS(NIL as types_h::uint32, NIL as types_h::uint32);
            (*mk).bitmap = 0;
            j = j.wrapping_add(1);
        }

        total = total.wrapping_add(n);
        n = n << 1;
        i -= 1;
    }

    let mk_size = size_of::<mark>();
    kmem.start_heap = mmu_h::align_up(kmem.start + (total as types_h::uint * mk_size as types_h::uint), 1 << MAX_ORD);

    let mut addr = kmem.start_heap;
    while addr < kmem.end {
        kfree(addr as *mut c_void, MAX_ORD as types_h::uint);
        addr = addr.wrapping_add(1 << MAX_ORD);
    }
}

unsafe fn unmark_blk(order_: types_h::uint, blk_id: types_h::uint) {
    let ord = &mut kmem.orders[(order_ - MIN_ORD) as usize] as *mut order;
    let mk = get_mark(order_, blk_id >> 5);
    let mut prev: types_h::uint;
    let mut next: types_h::uint;
    let mut p: *mut mark;

    if !available((*mk).bitmap as types_h::uint, blk_id) {
        // panic(b"double alloc\n\0".as_ptr() as *const i8);
    }

    (*mk).bitmap &= !(1 << (blk_id & 0x1F));

    if (*mk).bitmap == 0 {
        let mut blk = blk_id >> 5;
        prev = PRE_LNK((*mk).lnks) as types_h::uint;
        next = NEXT_LNK((*mk).lnks) as types_h::uint;

        if prev != NIL as types_h::uint {
            p = get_mark(order_, prev);
            (*p).lnks = LNKS(PRE_LNK((*p).lnks), next as types_h::uint32);
        } else if (*ord).head as types_h::uint == blk {
            (*ord).head = next as types_h::uint32;
        }

        if next != NIL as types_h::uint {
            p = get_mark(order_, next);
            (*p).lnks = LNKS(prev as types_h::uint32, NEXT_LNK((*p).lnks));
        }

        (*mk).lnks = LNKS(NIL as types_h::uint32, NIL as types_h::uint32);
    }
}

unsafe fn mark_blk(order_: types_h::uint, blk_id: types_h::uint) {
    let ord = &mut kmem.orders[(order_ - MIN_ORD) as usize] as *mut order;
    let mk = get_mark(order_, blk_id >> 5);
    let  p: *mut mark;

    let insert = (( (*mk).bitmap == 0) as types_h::uint) ;

    if available((*mk).bitmap as types_h::uint, blk_id) {
        // panic(b"double free\n\0".as_ptr() as *const i8);
    }

    (*mk).bitmap |= 1 << (blk_id & 0x1F);

    if insert != 0 {
        let mut idx = blk_id >> 5;
        (*mk).lnks = LNKS(NIL as types_h::uint32, (*ord).head);
        if (*ord).head != NIL as types_h::uint32 {
            p = get_mark(order_, (*ord).head as types_h::uint);
            (*p).lnks = LNKS(idx as types_h::uint32, NEXT_LNK((*p).lnks));
        }
        (*ord).head = idx as types_h::uint32;
    }
}

unsafe fn get_blk(order_: types_h::uint) -> *mut c_void {
    let ord = &mut kmem.orders[(order_ - MIN_ORD) as usize];
    if ord.head == NIL as types_h::uint32 {
        return ptr::null_mut();
    }
    let mk = get_mark(order_, ord.head as types_h::uint);

    if (*mk).bitmap == 0 {
        // panic(b"empty mark in the list\n\0".as_ptr() as *const i8);
    }

    let mut i = 0usize;
    while i < 32 {
        if ((*mk).bitmap & (1 << i)) != 0 {
            let blk_id = (ord.head as types_h::uint) * 32 + i as types_h::uint;
            unmark_blk(order_, blk_id);
            return blkid2mem(order_, blk_id);
        }
        i += 1;
    }

    ptr::null_mut()
}

extern "C" {
    fn _kfree(mem: *mut c_void, order: types_h::uint);
}

unsafe fn _kmalloc(order_: types_h::uint) -> *mut c_void {
    let ord = &mut kmem.orders[(order_ - MIN_ORD) as usize];
    let mut up: *mut c_void = ptr::null_mut();

    if ord.head != NIL as types_h::uint32 {
        up = get_blk(order_);
    } else if order_ < MAX_ORD as types_h::uint {
        up = _kmalloc(order_ + 1);
        if !up.is_null() {
            _kfree(( (up as *mut u8).add(1 << order_) ) as *mut c_void, order_);
        }
    }

    up
}

pub fn kmalloc(order_: types_h::uint) -> *mut c_void {
    if order_ > MAX_ORD as types_h::uint || order_ < MIN_ORD as types_h::uint {
        // panic(b"kmalloc: order out of range\n\0".as_ptr() as *const i8);
    }

    unsafe {
        kmem.lock.acquire();
        let up = _kmalloc(order_);
        kmem.lock.release();
        up
    }
}

#[no_mangle]
pub unsafe extern "C" fn _kfree_impl(mem: *mut c_void, order_: types_h::uint) {
    let blk_id = mem2blkid(order_, mem) as types_h::uint;
    let mk = get_mark(order_, blk_id >> 5);

    if available((*mk).bitmap as types_h::uint, blk_id) {
        // panic(b"kfree: double free\0".as_ptr() as *const i8);
    }

    let buddy_id = blk_id ^ 0x0001;
    if !available((*mk).bitmap as types_h::uint, buddy_id) || (order_ == MAX_ORD as types_h::uint) {
        mark_blk(order_, blk_id);
    } else {
        unmark_blk(order_, buddy_id);
        _kfree((blkid2mem(order_, blk_id & !0x0001)) as *mut c_void, order_ + 1);
    }
}

pub fn kfree(mem: *mut c_void, order_: types_h::uint) {
    if order_ > MAX_ORD as types_h::uint || order_ < MIN_ORD as types_h::uint || ((mem as types_h::uint) & ((1 << order_) - 1) as types_h::uint) != 0 {
        // panic(b"kfree: order out of range or memory unaligned\n\0".as_ptr() as *const i8);
    }

    unsafe {
        kmem.lock.acquire();
        _kfree(mem, order_);
        kmem.lock.release();
    }
}

pub fn free_page(v: *mut c_void) {
    kfree(v, mmu_h::PTE_SHIFT as types_h::uint);
}

pub fn alloc_page() -> *mut c_void {
    kmalloc(mmu_h::PTE_SHIFT as types_h::uint)
}

pub fn get_order(mut v: types_h::uint32) -> types_h::uint {
    let mut ord: types_h::uint32;

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

    if ord < MIN_ORD as types_h::uint32 {
        ord = MIN_ORD as types_h::uint32;
    } else if ord > MAX_ORD as types_h::uint32 {
        // panic(b"order too big!\0".as_ptr() as *const i8);
    }

    ord as types_h::uint
}
