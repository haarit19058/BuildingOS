use crate::types_h::*;
// use crate::defs::*;
use crate::param_h::*;
use crate::fs_h::*;
use crate::file_h::*;
use crate::spinlock_h::*;

// Global device switch table
pub static mut devsw: [Devsw; NDEV] = [Devsw { read: None, write: None }; NDEV];

pub struct Ftable {
    pub lock: SpinLock,
    pub file: [File; NFILE],
}

pub static mut FTABLE: Ftable = Ftable {
    lock: SpinLock::new(),
    file: [File::new(); NFILE],
};

// Initialize the file table
pub fn fileinit() {
    unsafe {
        initlock(&mut FTABLE.lock, b"ftable\0");
    }
}

// Allocate a file structure
pub fn filealloc() -> Option<&'static mut File> {
    unsafe {
        acquire(&mut FTABLE.lock);

        for f in FTABLE.file.iter_mut() {
            if f.ref_count == 0 {
                f.ref_count = 1;
                release(&mut FTABLE.lock);
                return Some(f);
            }
        }

        release(&mut FTABLE.lock);
    }
    None
}

// Increment ref count for file
pub fn filedup(f: &mut File) -> &mut File {
    unsafe {
        acquire(&mut FTABLE.lock);

        if f.ref_count < 1 {
            panic!("filedup");
        }

        f.ref_count += 1;
        release(&mut FTABLE.lock);
        f
    }
}

// Close file f
pub fn fileclose(f: &mut File) {
    let ff: File;

    unsafe {
        acquire(&mut FTABLE.lock);

        if f.ref_count < 1 {
            panic!("fileclose");
        }

        if f.ref_count > 1 {
            f.ref_count -= 1;
            release(&mut FTABLE.lock);
            return;
        }

        ff = *f;
        f.ref_count = 0;
        f.type_ = FdType::FdNone;
        release(&mut FTABLE.lock);
    }

    match ff.type_ {
        FdType::FdPipe => pipeclose(ff.pipe.unwrap(), ff.writable),
        FdType::FdInode => {
            begin_trans();
            iput(ff.ip.unwrap());
            commit_trans();
        }
        _ => {}
    }
}

// Get metadata about file
pub fn filestat(f: &File, st: &mut Stat) -> i32 {
    match f.type_ {
        FdType::FdInode => {
            ilock(f.ip.unwrap());
            stati(f.ip.unwrap(), st);
            iunlock(f.ip.unwrap());
            0
        }
        _ => -1,
    }
}

// Read from file
pub fn fileread(f: &mut File, addr: *mut u8, n: i32) -> i32 {
    if f.readable == 0 {
        return -1;
    }

    match f.type_ {
        FdType::FdPipe => piperead(f.pipe.unwrap(), addr, n),
        FdType::FdInode => unsafe {
            ilock(f.ip.unwrap());
            let r = readi(f.ip.unwrap(), addr, f.off, n);
            if r > 0 {
                f.off += r as u32;
            }
            iunlock(f.ip.unwrap());
            r
        },
        _ => panic!("fileread"),
    }
}

// Write to file
pub fn filewrite(f: &mut File, addr: *const u8, n: i32) -> i32 {
    if f.writable == 0 {
        return -1;
    }

    match f.type_ {
        FdType::FdPipe => pipewrite(f.pipe.unwrap(), addr, n),
        FdType::FdInode => {
            let max = ((LOGSIZE - 1 - 1 - 2) / 2) * 512;
            let mut i = 0;

            while i < n {
                let mut n1 = n - i;
                if n1 > max {
                    n1 = max;
                }

                begin_trans();
                ilock(f.ip.unwrap());
                let r = writei(f.ip.unwrap(), unsafe { addr.add(i as usize) }, f.off, n1);
                if r > 0 {
                    f.off += r as u32;
                }
                iunlock(f.ip.unwrap());
                commit_trans();

                if r < 0 {
                    return -1;
                }
                if r != n1 {
                    panic!("short filewrite");
                }
                i += r;
            }
            n
        }
        _ => panic!("filewrite"),
    }
}
