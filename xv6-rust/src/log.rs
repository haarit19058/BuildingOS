#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(non_upper_case_globals)]


use crate::params_h::*; // BSIZE, LOGSIZE, ROOTDEV
use crate::spinlock_h::*; // spinlock
use crate::buf_h::*;      // buf, flags
use crate::fs::*;
use crate::fs_h::*;       // superblock
use crate::bio::*;        // BCACHE.bread, BCACHE.bwrite, BCACHE.brelse
use crate::proc::*;


/// Log header (on-disk and in-memory). Mirrors xv6.
#[repr(C)]
pub struct LogHeader {
    pub n: usize,
    pub sector: [u32; LOGSIZE as usize],
}

/// Write-ahead log state.
pub struct Log {
    pub lock: spinlock,
    pub start: u32,   // first sector of log area
    pub size: u32,    // number of log sectors
    pub busy: bool,   // currently inside a transaction
    pub dev: u32,     // device number
    pub lh: LogHeader,
}

/// Global log object (runtime-initialized; lock gets a name in initlog()).
pub static mut LOG: Log = Log {
    lock: spinlock::new(),
    start: 0,
    size: 0,
    busy: false,
    dev: ROOTDEV as u32,
    lh: LogHeader { n: 0, sector: [0; LOGSIZE as usize] },
};

/// Initialize the on-disk log geometry and recover any committed txns.
pub unsafe fn initlog() {
    let mut sb = superblock::default();

    // Ensure header fits one block
    if core::mem::size_of::<LogHeader>() > BSIZE as usize {
        panic!("initlog: LogHeader too large for BSIZE");
    }

    LOG.lock.init(b"log\0".as_ptr());
    readsb(ROOTDEV, &mut sb);

    LOG.lock.acquire();
    LOG.start = sb.size - sb.nlog;
    LOG.size = sb.nlog;
    LOG.dev = ROOTDEV as u32;
    LOG.lock.release();

    recover_from_log();
}

/// Copy committed log blocks (log area) to home locations (data area).
unsafe fn install_trans() {
    LOG.lock.acquire();
    let n = LOG.lh.n;
    LOG.lock.release();

    for i in 0..n {
        let lbuf = BCACHE.bread(LOG.dev, LOG.start + i as u32 + 1);
        let dbuf = BCACHE.bread(LOG.dev, LOG.lh.sector[i]);

        // copy BSIZE bytes
        core::ptr::copy_nonoverlapping(
            (*lbuf).data.as_ptr(),
            (*dbuf).data.as_mut_ptr(),
            BSIZE as usize,
        );

        BCACHE.bwrite(dbuf);
        BCACHE.brelse(lbuf);
        BCACHE.brelse(dbuf);
    }
}

/// Read log header sector into LOG.lh.
unsafe fn read_head() {
    let buf = BCACHE.bread(LOG.dev, LOG.start); // header lives at LOG.start
    let hdr_ptr = (*buf).data.as_ptr() as *const LogHeader;

    LOG.lock.acquire();
    let n = (*hdr_ptr).n;
    LOG.lh.n = n;
    for i in 0..n {
        LOG.lh.sector[i] = (*hdr_ptr).sector[i];
    }
    LOG.lock.release();

    BCACHE.brelse(buf);
}

/// Write LOG.lh into header sector on disk.
unsafe fn write_head() {
    let buf = BCACHE.bread(LOG.dev, LOG.start);
    let hdr_ptr = (*buf).data.as_mut_ptr() as *mut LogHeader;

    LOG.lock.acquire();
    (*hdr_ptr).n = LOG.lh.n;
    for i in 0..LOG.lh.n {
        (*hdr_ptr).sector[i] = LOG.lh.sector[i];
    }
    LOG.lock.release();

    BCACHE.bwrite(buf);
    BCACHE.brelse(buf);
}

/// At boot: if header indicates committed txns, install and clear.
unsafe fn recover_from_log() {
    read_head();
    install_trans();

    LOG.lock.acquire();
    LOG.lh.n = 0;
    LOG.lock.release();

    write_head();
}

/// Begin a filesystem transaction (serialize via LOG.busy).
pub unsafe fn begin_trans() {
    LOG.lock.acquire();
    while LOG.busy {
        // Sleep on LOG itself, holding the queue via LOG.lock.
        sleep(&mut LOG as *mut _ as *mut u8, &mut LOG.lock);
    }
    LOG.busy = true;
    LOG.lock.release();
}

/// Commit the current transaction (if any).
pub unsafe fn commit_trans() {
    LOG.lock.acquire();
    let n = LOG.lh.n;
    LOG.lock.release();

    if n > 0 {
        // 1) write header so txn is committed
        write_head();
        // 2) install home blocks
        install_trans();
        // 3) clear in-memory header
        LOG.lock.acquire();
        LOG.lh.n = 0;
        LOG.lock.release();
        // 4) clear on-disk header
        write_head();
    }

    LOG.lock.acquire();
    LOG.busy = false;
    wakeup(&mut LOG as *mut _ as *mut u8);
    LOG.lock.release();
}

/// Log a modified buffer `b`: copy its data to the log and record sector.
///
/// Must be called between `begin_trans()` and `commit_trans()`.
pub unsafe fn log_write(b: *mut buf) {
    LOG.lock.acquire();

    if LOG.lh.n >= LOGSIZE as usize || LOG.lh.n >= (LOG.size as usize).saturating_sub(1) {
        LOG.lock.release();
        panic!("log_write: transaction too large");
    }
    if !LOG.busy {
        LOG.lock.release();
        panic!("log_write outside transaction");
    }

    // If sector already listed, reuse its slot (write-most-recent-wins).
    let mut i = 0usize;
    while i < LOG.lh.n {
        if LOG.lh.sector[i] == unsafe { (*b).sector } {
            break;
        }
        i += 1;
    }
    LOG.lh.sector[i] = unsafe { (*b).sector };

    LOG.lock.release();

    // Copy buffer into log block L(i) = start + 1 + i
    let lbuf = BCACHE.bread(unsafe { (*b).dev }, LOG.start + i as u32 + 1);
    core::ptr::copy_nonoverlapping(
        unsafe { (*b).data.as_ptr() },
        unsafe { (*lbuf).data.as_mut_ptr() },
        BSIZE as usize,
    );
    BCACHE.bwrite(lbuf);
    BCACHE.brelse(lbuf);

    LOG.lock.acquire();
    if i == LOG.lh.n {
        LOG.lh.n += 1;
    }
    LOG.lock.release();

    // Mark original buffer dirty so the caller knows it has been logged.
    unsafe {
        (*b).flags |= B_DIRTY;
    }
}
