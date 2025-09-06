use core::arch::asm;
use crate::proc_h;
use crate::{memlayout, params};
use crate::panic_wait;
use crate::bsp::*;
// use crate::{arm_h::*, mmu_h};

extern "C" {
    static mut cpu: *mut proc_h::cpu;
    // fn cprintf!(fmt: &str, ...);
    // fn panic!(msg: &str) -> !;
    // fn get_fp() -> *mut u32;
}

pub const DIS_INT: u32 = 0x80;      // interrupt disable bit
pub const MODE_MASK: u32 = 0x1F;    // CPSR mode mask
pub const USR_MODE: u32 = 0x10;     // User mode

pub unsafe fn cli() {
    let mut val: u64;
    asm!("mrs {0}, daif", out(reg) val);
    val |= 1 << 7; // Set I-bit to disable IRQ
    asm!("msr daif, {0}", in(reg) val);
}

pub unsafe fn sti() {
    let mut val: u64;
    asm!("mrs {0}, daif", out(reg) val);
    val &= !(1 << 7); // Clear I-bit to enable IRQ
    asm!("msr daif, {0}", in(reg) val);
}

pub unsafe fn int_enabled() -> u32 {
    let val: u64;
    asm!("mrs {0}, daif", out(reg) val);
    ((val & (1 << 7)) == 0) as u32
}

pub unsafe fn spsr_usr() -> u64 {
    let mut val: u64;
    asm!("mrs {0}, daif", out(reg) val);
    // Set to EL0, clear other bits if needed
    val &= !0xF; // mask out DAIF bits as example
    val
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
    if int_enabled() != 0 {
        panic!("popcli - interruptible");
    }

    (*cpu).ncli -= 1;
    if (*cpu).ncli < 0 {
        panic!("popcli -- ncli < 0");
    }

    if (*cpu).ncli == 0 && (*cpu).intena != 0 {
        sti();
    }
}

pub unsafe fn getcallerpcs(mut fp: *mut u32, pcs: &mut [u32; params::N_CALLSTK as usize]) {
    let mut i = 0;
    while i < params::N_CALLSTK {
        if fp.is_null() || fp < memlayout::KERNBASE as *mut u32 || fp == 0xffffffff as *mut u32 {
            break;
        }
        fp = fp.offset(-1);                 // move to saved fp
        pcs[i as usize] = *fp.add(1);                // saved lr
        fp = *fp as *mut u32;               // follow chain
        i += 1;
    }
    for j in i..params::N_CALLSTK {
        pcs[j as usize] = 0;
    }
}

// pub unsafe fn show_callstk(s: &str) {
//     let mut pcs: [u32; params::N_CALLSTK as usize] = [0; params::N_CALLSTK as usize];
//     cprintf!("%s\n", s);
//     getcallerpcs(get_fp(), &mut pcs);
//     for i in (0..params::N_CALLSTK).rev() {
//         cprintf!("%d: 0x%x\n", i + 1, pcs[i as usize]);
//     }
// }
