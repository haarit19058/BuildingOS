use crate::types_h::*;
// use crate::defs::*;
use crate::param_h::*;
use crate::spinlock_h::*;
use crate::fs_h::*;
use crate::buf_h::*;

/// Log header structure (in-memory and on-disk)
#[repr(C)]
struct LogHeader {
    n: usize,
    sector: [u32; LOGSIZE],
}

/// The main log structure
pub struct Log {
    pub lock: SpinLock,
    pub start: u32,
    pub size: u32,
    pub busy: bool,
    pub dev: u32,
    pub lh: LogHeader,
}

pub static mut LOG: Log = Log {
    lock: SpinLock::new(),
    start: 0,
    size: 0,
    busy: false,
    dev: ROOTDEV,
    lh: LogHeader { n: 0, sector: [0; LOGSIZE] },
};

/// Initialize the log system
pub fn initlog() {
    let mut sb = SuperBlock::default();
    
    unsafe {
        if core::mem::size_of::<LogHeader>() >= BSIZE {
            panic!("initlog: too big logheader");
        }

        initlock(&mut LOG.lock, b"log\0");
        readsb(ROOTDEV, &mut sb);

        LOG.start = sb.size - sb.nlog;
        LOG.size = sb.nlog;
        LOG.dev = ROOTDEV;

        recover_from_log();
    }
}

/// Copy committed blocks from log to their home locations
fn install_trans() {
    unsafe {
        for tail in 0..LOG.lh.n {
            let lbuf = bread(LOG.dev, LOG.start + tail as u32 + 1);
            let dbuf = bread(LOG.dev, LOG.lh.sector[tail] as u32);

            unsafe {
                core::ptr::copy_nonoverlapping(lbuf.data.as_ptr(), dbuf.data.as_mut_ptr(), BSIZE);
            }

            bwrite(dbuf);
            brelse(lbuf);
            brelse(dbuf);
        }
    }
}

/// Read the log header from disk into in-memory log header
fn read_head() {
    unsafe {
        let buf = bread(LOG.dev, LOG.start);
        let lh_ptr = buf.data.as_ptr() as *const LogHeader;
        LOG.lh.n = (*lh_ptr).n;

        for i in 0..LOG.lh.n {
            LOG.lh.sector[i] = (*lh_ptr).sector[i];
        }

        brelse(buf);
    }
}

/// Write in-memory log header to disk (commit point)
fn write_head() {
    unsafe {
        let buf = bread(LOG.dev, LOG.start);
        let hb_ptr = buf.data.as_mut_ptr() as *mut LogHeader;

        (*hb_ptr).n = LOG.lh.n;
        for i in 0..LOG.lh.n {
            (*hb_ptr).sector[i] = LOG.lh.sector[i];
        }

        bwrite(buf);
        brelse(buf);
    }
}

/// Recover from any committed log entries at boot
fn recover_from_log() {
    read_head();
    install_trans();
    unsafe { LOG.lh.n = 0; }
    write_head();
}

/// Begin a new file system transaction
pub fn begin_trans() {
    unsafe {
        acquire(&mut LOG.lock);
        while LOG.busy {
            sleep(&mut LOG as *mut _ as *mut u8, &mut LOG.lock);
        }
        LOG.busy = true;
        release(&mut LOG.lock);
    }
}

/// Commit the current transaction
pub fn commit_trans() {
    unsafe {
        if LOG.lh.n > 0 {
            write_head();    // Commit header
            install_trans(); // Copy log blocks to their locations
            LOG.lh.n = 0;
            write_head();    // Clear log
        }

        acquire(&mut LOG.lock);
        LOG.busy = false;
        wakeup(&mut LOG as *mut _ as *mut u8);
        release(&mut LOG.lock);
    }
}

/// Append a modified buffer to the log
pub fn log_write(b: &mut Buf) {
    unsafe {
        if LOG.lh.n >= LOGSIZE || LOG.lh.n >= LOG.size as usize - 1 {
            panic!("too big a transaction");
        }

        if !LOG.busy {
            panic!("write outside of trans");
        }

        let mut i = 0;
        while i < LOG.lh.n {
            if LOG.lh.sector[i] == b.sector {
                break;
            }
            i += 1;
        }

        LOG.lh.sector[i] = b.sector;
        let lbuf = bread(b.dev, LOG.start + i as u32 + 1);

        unsafe {
            core::ptr::copy_nonoverlapping(b.data.as_ptr(), lbuf.data.as_mut_ptr(), BSIZE);
        }

        bwrite(lbuf);
        brelse(lbuf);

        if i == LOG.lh.n {
            LOG.lh.n += 1;
        }

        b.flags |= B_DIRTY; // prevent eviction
    }
}
