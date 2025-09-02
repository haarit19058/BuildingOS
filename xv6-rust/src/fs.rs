#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(dead_code)]
#![allow(non_upper_case_globals)]
#![allow(unused_mut)]

// use core::ptr;
use core::mem;
use core::ffi::c_void;

use crate::params_h;
use crate::types_h::*; // expects uint, etc.
// use params_h;
use crate::stat_h;
// use crate::mmu_h;
// use crate::proc_h;
use crate::spinlock_h;
use crate::buf_h;
use crate::fs_h;
use crate::file_h;
use crate::proc::*;
// use crate::buddy::*;
use crate::bio::*;
use crate::log::*;
use crate::string_h::{memmove, memset, strncmp,strncpy};
// use crate::picirq::*;
// use crate::arm_h::*;
// use crate::trap::*;
use crate::file_h::{devsw, };



// conveniences
#[inline(always)]
fn min(a: uint, b: uint) -> uint {
    if a < b { a } else { b }
}

// Forward declarations of functions we implement below
// unsafe fn itrunc(ip: *mut file_h::inode);

// Read the super block.
pub unsafe fn readsb(dev: uint, sb: *mut fs_h::superblock) {
    let bp = BCACHE.bread(dev, 1);
    memmove(sb as *mut c_void, (*bp).data.as_ptr() as *const c_void, mem::size_of::<fs_h::superblock>());
    BCACHE.brelse(bp);
}

// Zero a block.
unsafe fn bzero(dev: uint, bno: uint) {
    let bp = BCACHE.bread(dev, bno);
    memset((*bp).data.as_mut_ptr() as *mut c_void, 0, fs_h::BSIZE as usize);
    log_write(bp);
    BCACHE.brelse(bp);
}

// Blocks.

// Allocate a zeroed disk block.
unsafe fn balloc(dev: uint) -> u32 {
    let mut b: uint;
    let mut bi: uint;
    let mut m: uint;
    let mut bp: *mut buf_h::buf;
    let mut sb: fs_h::superblock = mem::zeroed();

    // bp = core::ptr::null_mut();
    readsb(dev as uint, &mut sb as *mut fs_h::superblock);

    b = 0;
    while (b as uint) < sb.size {
        bp = BCACHE.bread(dev as uint, fs_h::bblock(b as uint, sb.ninodes));
        bi = 0;
        while (bi as uint) < fs_h::BPB && (b as uint).wrapping_add(bi as uint) < sb.size {
            m = 1 << (bi % 8);
            let idx_byte = (bi as usize) / 8;
            let cur = (*bp).data[idx_byte];
            if (cur & (m as u8)) == 0 {
                // mark in use
                (*bp).data[idx_byte] = cur | (m as u8);
                log_write(bp);
                BCACHE.brelse(bp);
                bzero(dev as uint, (b as uint).wrapping_add(bi as uint));
                return (b as uint).wrapping_add(bi as uint);
            }
            bi += 1;
        }
        BCACHE.brelse(bp);
        b += fs_h::BPB as uint; // increment by BPB
    }

    // panic(b"balloc: out of blocks\0".as_ptr() as *const uint8);
    0
}

// Free a disk block.

unsafe fn bfree(dev: uint, b: uint) {
    let mut bp: *mut buf_h::buf;
    let mut sb: fs_h::superblock = mem::zeroed();
    let mut bi: uint;
    let mut m: uint;

    readsb(dev as uint, &mut sb as *mut fs_h::superblock);
    bp = BCACHE.bread(dev as uint, fs_h::bblock(b, sb.ninodes));
    bi = (b % fs_h::BPB) as uint;
    m = 1 << (bi % 8);

    let idx_byte = (bi as usize) / 8;
    if ((*bp).data[idx_byte] & (m as u8)) == 0 {
        // panic(b"freeing free block\0".as_ptr() as *const uint8);
    }

    (*bp).data[idx_byte] &= !(m as u8);
    log_write(bp);
    BCACHE.brelse(bp);
}

// Inodes.
//
// Cache structure
static mut ICACHE_LOCK: spinlock_h::spinlock = spinlock_h::spinlock::new();
static mut ICACHE_INODE: [file_h::inode; params_h::NINODE as usize] = unsafe { mem::zeroed() };

pub unsafe fn iinit() {
    ICACHE_LOCK.init(b"icache\0".as_ptr());
}

// iget forward
unsafe fn iget(dev: uint, inum: uint) -> *mut file_h::inode {
    // acquire lock
    ICACHE_LOCK.acquire();

    let mut empty: *mut file_h::inode = core::ptr::null_mut();
    let mut i: usize = 0;
    let base = ICACHE_INODE.as_mut_ptr();

    while i < crate::params_h::NINODE as usize {
        let ip = base.add(i);
        if (*ip).ref_count > 0 && (*ip).dev == dev && (*ip).inum == inum {
            (*ip).ref_count = (*ip).ref_count.wrapping_add(1);
            ICACHE_LOCK.release();
            return ip;
        }
        if empty.is_null() && (*ip).ref_count == 0 {
            empty = ip;
        }
        i += 1;
    }

    if empty.is_null() {
        // panic(b"iget: no inodes\0".as_ptr() as *const uint8);
    }

    let ip = empty;
    (*ip).dev = dev;
    (*ip).inum = inum;
    (*ip).ref_count = 1;
    (*ip).flags = 0;
    ICACHE_LOCK.release();
    ip
}

// Allocate a new inode with the given type on device dev.
// A free inode has a type of zero.
pub unsafe fn ialloc(dev: uint, typ: uint16) -> *mut file_h::inode {
    let mut inum: uint = 1;
    let mut bp: *mut buf_h::buf;
    let mut dip: *mut fs_h::dinode;
    let mut sb: fs_h::superblock = mem::zeroed();

    readsb(dev as uint, &mut sb as *mut fs_h::superblock);

    while (inum as uint) < sb.ninodes {
        bp = BCACHE.bread(dev as uint, fs_h::iblock(inum as uint));
        dip = ((*bp).data.as_mut_ptr() as *mut fs_h::dinode).add((inum as usize) % (fs_h::IPB as usize));

        if (*dip).type_ == 0 {
            // free inode
            memset(dip as *mut c_void, 0, mem::size_of::<fs_h::dinode>());
            (*dip).type_ = typ;
            log_write(bp);
            BCACHE.brelse(bp);
            return iget(dev, inum as uint);
        }

        BCACHE.brelse(bp);
        inum += 1;
    }

    // panic(b"ialloc: no inodes\0".as_ptr() as *const uint8);
    core::ptr::null_mut()
}

// Copy a modified in-memory inode to disk.
pub unsafe fn iupdate(ip: *mut file_h::inode) {
    let bp = BCACHE.bread((*ip).dev as uint, fs_h::iblock((*ip).inum));
    let dip = ((*bp).data.as_mut_ptr() as *mut fs_h::dinode).add(((*ip).inum as usize) % (fs_h::IPB as usize));

    (*dip).type_ = (*ip).type_;
    (*dip).major = (*ip).major;
    (*dip).minor = (*ip).minor;
    (*dip).nlink = (*ip).nlink;
    (*dip).size = (*ip).size;

    memmove(
        (*dip).addrs.as_mut_ptr() as *mut c_void,
        (*ip).addrs.as_ptr() as *const c_void,
        mem::size_of::<[uint; fs_h::NDIRECT as usize + 1]>(),
    );

    log_write(bp);
    BCACHE.brelse(bp);
}

// Increment reference count for ip. Returns ip to enable idiom.
pub unsafe fn idup(ip: *mut file_h::inode) -> *mut file_h::inode {
    ICACHE_LOCK.acquire();
    (*ip).ref_count = (*ip).ref_count.wrapping_add(1);
    ICACHE_LOCK.release();
    ip
}

// Lock the given inode. Reads the inode from disk if necessary.
pub unsafe fn ilock(ip: *mut file_h::inode) {
    let mut bp: *mut buf_h::buf;
    let mut dip: *mut fs_h::dinode;

    if ip.is_null() || (*ip).ref_count < 1 {
        // panic(b"ilock\0".as_ptr() as *const uint8);
    }

    ICACHE_LOCK.acquire();
    while ((*ip).flags & file_h::I_BUSY) != 0 {
        // sleep(ip, &icache.lock)
        // Assume sleep is available
        sleep(ip as *mut u8, &mut ICACHE_LOCK);


    }

    (*ip).flags |= file_h::I_BUSY;
    ICACHE_LOCK.release();

    if ((*ip).flags & file_h::I_VALID) == 0 {
        bp = BCACHE.bread((*ip).dev as uint, fs_h::iblock((*ip).inum));
        dip = ((*bp).data.as_mut_ptr() as *mut fs_h::dinode).add(((*ip).inum as usize) % (fs_h::IPB as usize));

        (*ip).type_ = (*dip).type_;
        (*ip).major = (*dip).major;
        (*ip).minor = (*dip).minor;
        (*ip).nlink = (*dip).nlink;
        (*ip).size = (*dip).size;

        memmove(
            (*ip).addrs.as_mut_ptr() as *mut c_void,
            (*dip).addrs.as_ptr() as *const c_void,
            mem::size_of::<[uint; fs_h::NDIRECT as usize + 1]>(),
        );

        BCACHE.brelse(bp);
        (*ip).flags |= file_h::I_VALID;

        if (*ip).type_ == 0 {
            // panic(b"ilock: no type\0".as_ptr() as *const uint8);
        }
    }
}

// Unlock the given inode.
pub unsafe fn iunlock(ip: *mut file_h::inode) {
    if ip.is_null() || ((*ip).flags & file_h::I_BUSY) == 0 || (*ip).ref_count < 1 {
        // panic(b"iunlock\0".as_ptr() as *const uint8);
    }

    ICACHE_LOCK.acquire();
    (*ip).flags &= !file_h::I_BUSY;
    // wakeup(ip)
    wakeup(ip as *mut u8);
    ICACHE_LOCK.release();
}

// Drop a reference to an in-memory inode.
pub unsafe fn iput(ip: *mut file_h::inode) {
    ICACHE_LOCK.acquire();

    if (*ip).ref_count == 1 && ((*ip).flags & file_h::I_VALID) != 0 && (*ip).nlink == 0 {
        if ((*ip).flags & file_h::I_BUSY) != 0 {
            // panic(b"iput busy\0".as_ptr() as *const uint8);
        }

        (*ip).flags |= file_h::I_BUSY;
        ICACHE_LOCK.release();
        itrunc(ip);
        (*ip).type_ = 0;
        iupdate(ip);

        ICACHE_LOCK.acquire();
        (*ip).flags = 0;
        wakeup(ip as *mut u8);
    }

    (*ip).ref_count = (*ip).ref_count.wrapping_sub(1);
    ICACHE_LOCK.release();
}

// Common idiom: unlock, then put.
pub unsafe fn iunlockput(ip: *mut file_h::inode) {
    iunlock(ip);
    iput(ip);
}

// Inode content

// Return the disk block address of the nth block in inode ip.
// If there is no such block, bmap allocates one.
unsafe fn bmap(ip: *mut file_h::inode, mut bn: uint) -> uint {
    let mut addr: uint;
    let mut a: *mut uint;
    let mut bp: *mut buf_h::buf;

    if bn < fs_h::NDIRECT {
        addr = (*ip).addrs[bn as usize];
        if addr == 0 {
            addr = balloc((*ip).dev);
            (*ip).addrs[bn as usize] = addr;
        }
        return addr;
    }

    bn = bn.wrapping_sub(fs_h::NDIRECT);

    if bn < fs_h::NINDIRECT {
        if (*ip).addrs[fs_h::NDIRECT as usize] == 0 {
            (*ip).addrs[fs_h::NDIRECT as usize] = balloc((*ip).dev);
        }

        bp = BCACHE.bread((*ip).dev as uint, (*ip).addrs[fs_h::NDIRECT as usize]);
        a = (*bp).data.as_mut_ptr() as *mut uint;

        addr = *a.add(bn as usize);
        if addr == 0 {
            let newaddr = balloc((*ip).dev);
            *a.add(bn as usize) = newaddr;
            log_write(bp);
            addr = newaddr;
        }

        BCACHE.brelse(bp);
        return addr;
    }

    // panic(b"bmap: out of range\0".as_ptr() as *const uint8);
    0
}

// Truncate inode (discard contents).
unsafe fn itrunc(ip: *mut file_h::inode) {
    // let mut i: usize;
    let mut j: usize;
    let mut bp: *mut buf_h::buf;
    let mut a: *mut uint;

    for i in 0..(fs_h::NDIRECT as usize) {
        if (*ip).addrs[i] != 0 {
            bfree((*ip).dev, (*ip).addrs[i]);
            (*ip).addrs[i] = 0;
        }
    }

    if (*ip).addrs[fs_h::NDIRECT as usize] != 0 {
        bp = BCACHE.bread((*ip).dev as uint, (*ip).addrs[fs_h::NDIRECT as usize]);
        a = (*bp).data.as_mut_ptr() as *mut uint;

        j = 0;
        while j < fs_h::NINDIRECT as usize {
            if *a.add(j) != 0 {
                bfree((*ip).dev, *a.add(j));
            }
            j += 1;
        }

        BCACHE.brelse(bp);
        bfree((*ip).dev, (*ip).addrs[fs_h::NDIRECT as usize]);
        (*ip).addrs[fs_h::NDIRECT as usize] = 0;
    }

    (*ip).size = 0;
    iupdate(ip);
}

// Copy stat information from inode.
pub unsafe fn stati(ip: *mut file_h::inode, st: *mut stat_h::stat) {
    (*st).dev = (*ip).dev;
    (*st).ino = (*ip).inum;
    (*st).type_ = (*ip).type_;
    (*st).nlink = (*ip).nlink;
    (*st).size = (*ip).size;
}

pub unsafe fn readi(ip: *mut file_h::inode, dst: *mut u8, mut off: u32, mut n: u32) -> i32 {
    let mut tot: u32;
    let mut m: u32;
    let mut bp: *mut buf_h::buf;

    // Device file
    if (*ip).type_ == stat_h::T_DEV {
        let major = (*ip).major as usize;
        if (*ip).major < 0 || major >= params_h::NDEV as usize {
            return -1;
        }

        // get pointer to devsw[major]
        let devsw_ptr = devsw.as_mut_ptr().add(major);

        // extract function pointer
        match (*devsw_ptr).read {
            Some(read_fn) => {
                return read_fn(ip, dst, n as usize) as i32;
            }
            None => return -1,
        }
    }

    // Normal inode
    if off > (*ip).size || off.wrapping_add(n) < off {
        return -1;
    }
    if off.wrapping_add(n) > (*ip).size {
        n = (*ip).size.wrapping_sub(off);
    }

    tot = 0;
    while tot < n {
        let bn = bmap(ip, off / fs_h::BSIZE);
        bp = BCACHE.bread((*ip).dev as u32, bn);

        m = core::cmp::min(
            n.wrapping_sub(tot),
            (fs_h::BSIZE as u32).wrapping_sub(off % fs_h::BSIZE),
        );

        // memcpy
        memmove(
            dst.add(tot as usize) as *mut c_void,
            (*bp).data.as_ptr().add((off % fs_h::BSIZE) as usize) as *const c_void,
            m as usize,
        );

        BCACHE.brelse(bp);
        tot = tot.wrapping_add(m);
        off = off.wrapping_add(m);
    }

    n as i32
}

pub unsafe fn writei(ip: *mut file_h::inode, src: *const u8, mut off: u32, mut n: u32) -> i32 {
    let mut tot: u32;
    let mut m: u32;
    let mut bp: *mut buf_h::buf;

    // Device file
    if (*ip).type_ == stat_h::T_DEV {
        let major = (*ip).major as usize;
        if (*ip).major < 0 || major >= params_h::NDEV  as usize{
            return -1;
        }

        let devsw_ptr = devsw.as_mut_ptr().add(major);

        match (*devsw_ptr).write {
            Some(write_fn) => {
                return write_fn(ip, src, n as usize) as i32;
            }
            None => return -1,
        }
    }

    // Normal inode
    if off > (*ip).size || off.wrapping_add(n) < off {
        return -1;
    }

    if off.wrapping_add(n) > (fs_h::MAXFILE as u32).wrapping_mul(fs_h::BSIZE as u32) {
        return -1;
    }

    tot = 0;
    while tot < n {
        let bn = bmap(ip, off / fs_h::BSIZE);
        bp = BCACHE.bread((*ip).dev as u32, bn);

        m = core::cmp::min(
            n.wrapping_sub(tot),
            (fs_h::BSIZE as u32).wrapping_sub(off % fs_h::BSIZE),
        );

        memmove(
            (*bp).data.as_mut_ptr().add((off % fs_h::BSIZE) as usize) as *mut c_void,
            src.add(tot as usize) as *const c_void,
            m as usize,
        );

        log_write(bp);
        BCACHE.brelse(bp);

        tot = tot.wrapping_add(m);
        off = off.wrapping_add(m);
    }

    if n > 0 && off > (*ip).size {
        (*ip).size = off;
        iupdate(ip);
    }

    n as i32
}

// Directories

pub unsafe fn namecmp(s: *const uint8, t: *const uint8) -> uint {
    strncmp(s, t, fs_h::DIRSIZ as usize) as uint

}

// Look for a directory entry in a directory.
// If found, set *poff to byte offset of entry.
pub unsafe fn dirlookup(dp: *mut file_h::inode, name: *const uint8, poff: *mut uint) -> *mut file_h::inode {
    let mut off: uint ;
    let mut inum: uint;
    let mut de: fs_h::dirent = mem::zeroed();

    if (*dp).type_ != stat_h::T_DIR {
        // panic(b"dirlookup not DIR\0".as_ptr() as *const uint8);
    }

    off = 0;
    while off < (*dp).size {
        if readi(dp, (&mut de) as *mut fs_h::dirent as *mut u8, off, mem::size_of::<fs_h::dirent>() as uint) != mem::size_of::<fs_h::dirent>() as i32 {
            // panic(b"dirlink read\0".as_ptr() as *const uint8);
        }

        if de.inum == 0 {
            off = off.wrapping_add(mem::size_of::<fs_h::dirent>() as uint);
            continue;
        }

        if namecmp(name, de.name.as_ptr() as *const uint8) == 0 {
            if !poff.is_null() {
                *poff = off;
            }
            inum = de.inum as u32;
            return iget((*dp).dev, inum);
        }

        off = off.wrapping_add(mem::size_of::<fs_h::dirent>() as uint);
    }

    core::ptr::null_mut()
}

// Write a new directory entry (name, inum) into the directory dp.
pub unsafe fn dirlink(dp: *mut file_h::inode, name: *const uint8, inum: uint) -> i32 {
    let mut off: uint ;
    let mut de: fs_h::dirent = mem::zeroed();
    let mut ip: *mut file_h::inode;

    // Check that name is not present.
    ip = dirlookup(dp, name, core::ptr::null_mut());
    if !ip.is_null() {
        iput(ip);
        return -1;
    }

    // Look for an empty dirent.
    off = 0;
    while (off as uint) < (*dp).size {
        if readi(dp, (&mut de) as *mut fs_h::dirent as *mut u8, off as uint, mem::size_of::<fs_h::dirent>() as uint) != mem::size_of::<fs_h::dirent>() as i32 {
            // panic(b"dirlink read\0".as_ptr() as *const uint8);
        }
        if de.inum == 0 {
            break;
        }
        off += mem::size_of::<fs_h::dirent>() as uint;
    }

    // prepare dirent
    // strncpy(de.name, name, DIRSIZ)
    // name is a C string pointer
    strncpy(de.name.as_mut_ptr() as *mut uint8, name, fs_h::DIRSIZ as usize);
    de.inum = inum as u16;

    if writei(dp, (&de) as *const fs_h::dirent as *const u8, off as uint, mem::size_of::<fs_h::dirent>() as uint) != mem::size_of::<fs_h::dirent>() as i32 {
        // panic(b"dirlink\0".as_ptr() as *const uint8);
    }

    0
}

// Paths

// Copy the next path element from path into name.
// Return a pointer to the element following the copied one.
unsafe fn skipelem(mut path: *const uint8, name: *mut uint8) -> *const uint8 {
    // skip leading slashes
    while *path == b'/' as uint8 {
        path = path.add(1);
    }

    if *path == 0 {
        return core::ptr::null();
    }

    let s = path;

    while *path != b'/' as uint8 && *path != 0 {
        path = path.add(1);
    }

    let len = (path as usize).wrapping_sub(s as usize);

    if len >= fs_h::DIRSIZ as usize {
        // memmove(name, s, DIRSIZ)
        memmove(name as *mut c_void, s as *const c_void, fs_h::DIRSIZ as usize);
    } else {
        memmove(name as *mut c_void, s as *const c_void, len);
        *name.add(len) = 0;
    }

    // skip slashes
    while *path == b'/' as uint8 {
        path = path.add(1);
    }

    path
}

// Look up and return the inode for a path name.
unsafe fn namex(path: *const uint8, nameiparent: uint, name: *mut uint8) -> *mut file_h::inode {
    let mut ip: *mut file_h::inode;
    let mut next: *mut file_h::inode;

    if *path == b'/' as uint8 {
        ip = iget(params_h::ROOTDEV as uint, fs_h::ROOTINO);
    } else {
        ip = idup((*proc).cwd);
    }

    let mut p = path;
    while {
        p = skipelem(p, name);
        !p.is_null()
    } {
        ilock(ip);

        if (*ip).type_ != stat_h::T_DIR {
            iunlockput(ip);
            return core::ptr::null_mut();
        }

        if nameiparent != 0 && *p == 0 {
            iunlock(ip);
            return ip;
        }

        next = dirlookup(ip, name, core::ptr::null_mut());
        if next.is_null() {
            iunlockput(ip);
            return core::ptr::null_mut();
        }

        iunlockput(ip);
        ip = next;
    }

    if nameiparent != 0 {
        iput(ip);
        return core::ptr::null_mut();
    }

    ip
}

pub unsafe fn namei(path: *const uint8) -> *mut file_h::inode {
    let mut name_buf: [uint8; fs_h::DIRSIZ as usize] = [0; fs_h::DIRSIZ as usize];
    namex(path, 0, name_buf.as_mut_ptr())
}

pub unsafe fn nameiparent(path: *const uint8, name: *mut uint8) -> *mut file_h::inode {
    namex(path, 1, name)
}
