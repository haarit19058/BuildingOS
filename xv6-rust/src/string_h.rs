use core::ffi::c_void;
// use core::ptr;

/// memset: fill `n` bytes at `dst` with value `v`
pub unsafe fn memset(dst: *mut c_void, v: i32, mut n: usize) -> *mut c_void {
    let mut p = dst as *mut u8;
    let c = (v & 0xff) as u8;
    let val: u32 = ((c as u32) << 24) | ((c as u32) << 16) | ((c as u32) << 8) | (c as u32);

    // align up to 4 bytes
    while n > 0 && (p as usize) % 4 != 0 {
        *p = c;
        p = p.add(1);
        n -= 1;
    }

    // bulk set 4 bytes at a time
    let mut p4 = p as *mut u32;
    while n >= 4 {
        *p4 = val;
        p4 = p4.add(1);
        n -= 4;
    }

    // leftover single bytes
    p = p4 as *mut u8;
    while n > 0 {
        *p = c;
        p = p.add(1);
        n -= 1;
    }

    dst
}

/// memcmp: compare n bytes
pub unsafe fn memcmp(v1: *const c_void, v2: *const c_void, mut n: usize) -> i32 {
    let mut s1 = v1 as *const u8;
    let mut s2 = v2 as *const u8;

    while n > 0 {
        if *s1 != *s2 {
            return (*s1 as i32) - (*s2 as i32);
        }
        s1 = s1.add(1);
        s2 = s2.add(1);
        n -= 1;
    }
    0
}

/// memmove: safe for overlap
pub unsafe fn memmove(dst: *mut c_void, src: *const c_void, mut n: usize) -> *mut c_void {
    let s = src as *const u8;
    let d = dst as *mut u8;

    if s < d as *const u8 && (s.add(n) > d as *const u8) {
        // copy backwards
        let mut s = s.add(n);
        let mut d = d.add(n);
        while n > 0 {
            s = s.sub(1);
            d = d.sub(1);
            *d = *s;
            n -= 1;
        }
    } else {
        // copy forwards
        let mut s = s;
        let mut d = d;
        while n > 0 {
            *d = *s;
            d = d.add(1);
            s = s.add(1);
            n -= 1;
        }
    }
    dst
}

/// memcpy: just memmove
pub unsafe fn memcpy(dst: *mut c_void, src: *const c_void, n: usize) -> *mut c_void {
    memmove(dst, src, n)
}

/// strncmp: compare at most n chars
pub unsafe fn strncmp(p: *const u8, q: *const u8, mut n: usize) -> i32 {
    let mut p = p;
    let mut q = q;

    while n > 0 && *p != 0 && *p == *q {
        n -= 1;
        p = p.add(1);
        q = q.add(1);
    }

    if n == 0 {
        0
    } else {
        (*p as i32) - (*q as i32)
    }
}

/// strncpy: copy up to n chars, pad with 0
pub unsafe fn strncpy(s: *mut u8, t: *const u8, mut n: usize) -> *mut u8 {
    let os = s;
    let mut s = s;
    let mut t = t;

    while n > 0 {
        let ch = *t;
        *s = ch;
        s = s.add(1);
        if ch != 0 {
            t = t.add(1);
        }
        n -= 1;
    }
    os
}

/// safestrcpy: strncpy but NUL-terminated
pub unsafe fn safestrcpy(s: *mut u8, t: *const u8, mut n: usize) -> *mut u8 {
    let os = s;
    if n <= 0 {
        return os;
    }

    let mut s = s;
    let mut t = t;

    while n > 1 {
        let ch = *t;
        *s = ch;
        s = s.add(1);
        if ch == 0 {
            *s = 0;
            return os;
        }
        t = t.add(1);
        n -= 1;
    }

    *s = 0;
    os
}

/// strlen: length of string
pub unsafe fn strlen(s: *const u8) -> usize {
    let mut n = 0;
    while *s.add(n) != 0 {
        n += 1;
    }
    n
}
