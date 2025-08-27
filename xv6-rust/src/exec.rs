use crate::types_h::*;
use crate::param_h::*;
// use crate::defs::*;
use crate::memlayout_h::*;
use crate::mmu_h::*;
use crate::proc_h::*;
use crate::elf_h::*;
use crate::arm_h::*;

pub unsafe fn exec(path: *const u8, argv: *const *const u8) -> i32 {
    let mut elf: ElfHdr = core::mem::zeroed();
    let mut ip: *mut Inode = core::ptr::null_mut();
    let mut ph: ProgHdr = core::mem::zeroed();
    let mut pgdir: *mut Pde = core::ptr::null_mut();
    let mut oldpgdir: *mut Pde = core::ptr::null_mut();
    let mut s: *const u8;
    let mut last: *const u8;
    let mut i: usize;
    let mut off: usize;
    let mut argc: usize = 0;
    let mut sz: usize = 0;
    let mut sp: usize;
    let mut ustack: [usize; 3 + MAXARG + 1] = [0; 3 + MAXARG + 1];

    // Step 1: Locate program file
    ip = namei(path);
    if ip.is_null() {
        return -1;
    }
    ilock(ip);

    // Step 2: Validate ELF header
    if readi(ip, &mut elf as *mut _ as *mut u8, 0, core::mem::size_of::<ElfHdr>()) 
        < core::mem::size_of::<ElfHdr>() as i32 
    {
        goto_bad!(pgdir, ip);
    }

    if elf.magic != ELF_MAGIC {
        goto_bad!(pgdir, ip);
    }

    pgdir = kpt_alloc();
    if pgdir.is_null() {
        goto_bad!(pgdir, ip);
    }

    // Step 4: Load program segments
    sz = 0;
    i = 0;
    off = elf.phoff as usize;

    while i < elf.phnum as usize {
        if readi(ip, &mut ph as *mut _ as *mut u8, off, core::mem::size_of::<ProgHdr>()) 
            != core::mem::size_of::<ProgHdr>() as i32 
        {
            goto_bad!(pgdir, ip);
        }

        if ph.type_ != ELF_PROG_LOAD {
            i += 1;
            off += core::mem::size_of::<ProgHdr>();
            continue;
        }

        if ph.memsz < ph.filesz {
            goto_bad!(pgdir, ip);
        }

        if (sz = allocuvm(pgdir, sz, (ph.vaddr + ph.memsz) as usize)) == 0 {
            goto_bad!(pgdir, ip);
        }

        if loaduvm(pgdir, ph.vaddr as *mut u8, ip, ph.off as usize, ph.filesz as usize) < 0 {
            goto_bad!(pgdir, ip);
        }

        i += 1;
        off += core::mem::size_of::<ProgHdr>();
    }

    iunlockput(ip);
    ip = core::ptr::null_mut();

    // Step 5: Allocate stack (2 pages)
    sz = align_up(sz, PTE_SZ);
    if (sz = allocuvm(pgdir, sz, sz + 2 * PTE_SZ)) == 0 {
        goto_bad!(pgdir, ip);
    }
    clearpteu(pgdir, (sz - 2 * PTE_SZ) as *mut u8); // guard page

    sp = sz;

    // Step 6: Push arguments
    while !(*argv.add(argc)).is_null() {
        if argc >= MAXARG {
            goto_bad!(pgdir, ip);
        }

        sp = (sp - strlen(*argv.add(argc)) - 1) & !3; // align to 4 bytes

        if copyout(pgdir, sp, *argv.add(argc), strlen(*argv.add(argc)) + 1) < 0 {
            goto_bad!(pgdir, ip);
        }

        ustack[argc] = sp;
        argc += 1;
    }

    ustack[argc] = 0;

    proc.tf.as_mut().unwrap().r0 = argc;
    proc.tf.as_mut().unwrap().r1 = sp - (argc + 1) * 4;

    sp -= (argc + 1) * 4;
    if copyout(pgdir, sp, ustack.as_ptr() as *const u8, (argc + 1) * 4) < 0 {
        goto_bad!(pgdir, ip);
    }

    // Step 7: Save process name
    last = path;
    s = path;
    while *s != 0 {
        if *s == b'/' {
            last = s.add(1);
        }
        s = s.add(1);
    }
    safestrcpy(proc.name.as_mut_ptr(), last, core::mem::size_of::<[u8; 16]>());

    // Step 8: Commit new image
    oldpgdir = proc.pgdir;
    proc.pgdir = pgdir;
    proc.sz = sz;
    proc.tf.as_mut().unwrap().pc = elf.entry as usize;
    proc.tf.as_mut().unwrap().sp_usr = sp;

    switchuvm(proc);
    freevm(oldpgdir);

    return 0;

    macro_rules! goto_bad {
        ($pgdir:expr, $ip:expr) => {{
            if !$pgdir.is_null() {
                freevm($pgdir);
            }
            if !$ip.is_null() {
                iunlockput($ip);
            }
            return -1;
        }};
    }
}
