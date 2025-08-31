use core::arch::asm;
use crate::types_h::uint;
use crate::proc_h::cpu;
use crate::{memlayout_h, params_h};
// use crate::{arm_h::*, mmu_h};

extern "C" {
    static mut cpu: *mut cpu;
    fn cprintf(fmt: &str, ...);
    fn panic(msg: &str) -> !;
    fn get_fp() -> *mut u32;
}

pub const DIS_INT: uint = 0x80;      // interrupt disable bit
pub const MODE_MASK: uint = 0x1F;    // CPSR mode mask
pub const USR_MODE: uint = 0x10;     // User mode

pub unsafe fn cli() {
    let mut val: uint;
    asm!("MRS {v}, cpsr", v = out(reg) val);
    val |= DIS_INT;
    asm!("MSR cpsr_cxsf, {v}", v = in(reg) val);
}

pub unsafe fn sti() {
    let mut val: uint;
    asm!("MRS {v}, cpsr", v = out(reg) val);
    val &= !DIS_INT;
    asm!("MSR cpsr_cxsf, {v}", v = in(reg) val);
}

pub unsafe fn spsr_usr() -> uint {
    let mut val: uint;
    asm!("MRS {v}, cpsr", v = out(reg) val);
    val &= !MODE_MASK;
    val |= USR_MODE;
    val
}

pub unsafe fn int_enabled() -> uint {
    let mut val: uint;
    asm!("MRS {v}, cpsr", v = out(reg) val);
    ((val & DIS_INT) == 0) as u32

}

pub unsafe fn pushcli() {
    let enabled = int_enabled();
    cli();
    if (*cpu).ncli == 0 {
        (*cpu).intena = enabled;
    }
    (*cpu).ncli += 1;
}

pub unsafe fn popcli() {
    if int_enabled() !=0  {
        panic("popcli - interruptible");
    }

    (*cpu).ncli -= 1;
    if (*cpu).ncli < 0 {
        cprintf("cpu %p->ncli: %d\n", cpu as *const (), (*cpu).ncli);
        panic("popcli -- ncli < 0");
    }

    if (*cpu).ncli == 0 && (*cpu).intena != 0 {
        sti();
    }
}

pub unsafe fn getcallerpcs(mut fp: *mut u32, pcs: &mut [uint; params_h::N_CALLSTK as usize]) {
    let mut i = 0;
    while i < params_h::N_CALLSTK {
        if fp.is_null() || fp < memlayout_h::KERNBASE as *mut u32 || fp == 0xffffffff as *mut u32 {
            break;
        }
        fp = fp.offset(-1);                 // move to saved fp
        pcs[i as usize] = *fp.add(1);                // saved lr
        fp = *fp as *mut u32;               // follow chain
        i += 1;
    }
    for j in i..params_h::N_CALLSTK {
        pcs[j as usize] = 0;
    }
}

pub unsafe fn show_callstk(s: &str) {
    let mut pcs: [uint; params_h::N_CALLSTK as usize] = [0; params_h::N_CALLSTK as usize];
    cprintf("%s\n", s);
    getcallerpcs(get_fp(), &mut pcs);
    for i in (0..params_h::N_CALLSTK).rev() {
        cprintf("%d: 0x%x\n", i + 1, pcs[i as usize]);
    }
}
