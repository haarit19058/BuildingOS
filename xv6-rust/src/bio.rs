use crate::types_h::*;
// use crate::defs::*;
use crate::param_h::*;
use crate::spinlock_h::*;
use crate::buf_h::*;

pub struct BCache {
    lock: SpinLock,
    buf: [Buf; NBUF],
    head: Buf, // dummy head for circular doubly-linked list
}

pub static mut BCACHE: BCache = BCache {
    lock: SpinLock::new(),
    buf: [Buf::new(); NBUF],
    head: Buf::new(),
};

impl Buf {
    pub const fn new() -> Buf {
        Buf {
            flags: 0,
            dev: 0,
            sector: 0,
            prev: core::ptr::null_mut(),
            next: core::ptr::null_mut(),
            qnext: core::ptr::null_mut(),
            data: [0; 512],
        }
    }
}

pub unsafe fn binit() {
    initlock(&mut BCACHE.lock, b"bcache\0".as_ptr());

    BCACHE.head.prev = &mut BCACHE.head;
    BCACHE.head.next = &mut BCACHE.head;

    for b in BCACHE.buf.iter_mut() {
        b.next = BCACHE.head.next;
        b.prev = &mut BCACHE.head;
        b.dev = u32::MAX; // -1 in C

        (*BCACHE.head.next).prev = b;
        BCACHE.head.next = b;
    }
}

unsafe fn bget(dev: u32, sector: u32) -> *mut Buf {
    loop {
        acquire(&mut BCACHE.lock);

        // search for cached buffer
        let mut b = BCACHE.head.next;
        while b != &mut BCACHE.head as *mut Buf {
            if (*b).dev == dev && (*b).sector == sector {
                if (*b).flags & B_BUSY == 0 {
                    (*b).flags |= B_BUSY;
                    release(&mut BCACHE.lock);
                    return b;
                }
                sleep(b as *mut u8, &mut BCACHE.lock);
                release(&mut BCACHE.lock);
                continue; // retry
            }
            b = (*b).next;
        }

        // not cached; recycle clean non-busy buffer from tail
        let mut b = BCACHE.head.prev;
        while b != &mut BCACHE.head as *mut Buf {
            if (*b).flags & B_BUSY == 0 && (*b).flags & B_DIRTY == 0 {
                (*b).dev = dev;
                (*b).sector = sector;
                (*b).flags = B_BUSY;
                release(&mut BCACHE.lock);
                return b;
            }
            b = (*b).prev;
        }

        panic(b"bget: no buffers\0".as_ptr());
    }
}

pub unsafe fn bread(dev: u32, sector: u32) -> *mut Buf {
    let b = bget(dev, sector);
    if (*b).flags & B_VALID == 0 {
        iderw(b);
    }
    b
}

pub unsafe fn bwrite(b: *mut Buf) {
    if (*b).flags & B_BUSY == 0 {
        panic(b"bwrite\0".as_ptr());
    }
    (*b).flags |= B_DIRTY;
    iderw(b);
}

pub unsafe fn brelse(b: *mut Buf) {
    if (*b).flags & B_BUSY == 0 {
        panic(b"brelse\0".as_ptr());
    }

    acquire(&mut BCACHE.lock);

    (*(*b).next).prev = (*b).prev;
    (*(*b).prev).next = (*b).next;

    (*b).next = BCACHE.head.next;
    (*b).prev = &mut BCACHE.head;
    (*BCACHE.head.next).prev = b;
    BCACHE.head.next = b;

    (*b).flags &= !B_BUSY;
    wakeup(b as *mut u8);

    release(&mut BCACHE.lock);
}
