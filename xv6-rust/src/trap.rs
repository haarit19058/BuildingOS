
use core::arch::asm;
use core::ptr;
use crate::proc::*;
// use crate::proc_h::*;
// use crate::syscall_h::*;
use crate::syscall::*;
// use crate::printf::*;
// use crate::memlayout_h::*;
// use crate::mmu_h::*;
use crate::versatile_pb_h::*;
use crate::buddy::*;
// use crate::syscall_h::*;
// use crate::panic::panic;
use crate::arm_h::*; // constants: IRQ_MODE, FIQ_MODE, etc.
use crate::picirq::*;
use crate::arm::*;

extern "C" {
    pub fn set_stk(mode: u32, stk: u32);
    pub fn trap_swi();
    pub fn trap_irq();
    pub fn trap_reset();
    pub fn trap_und();
    pub fn trap_iabort();
    pub fn trap_dabort();
    pub fn trap_na();
    pub fn trap_fiq();
    pub fn trapret();
}


/// SWI handler
#[no_mangle]
pub extern "C" fn swi_handler(tf: &mut trapframe) {
    unsafe {
    let  p    = current_proc() ;
        (*p).tf = tf;
    }
    unsafe { syscall(); }
}

/// IRQ handler
#[no_mangle]
pub extern "C" fn irq_handler(tf: &mut trapframe) {
    unsafe {
        let  p    = current_proc() ;
            (*p).tf = tf;
    }
    unsafe { pic_dispatch(tf); }
}

/// Reset handler
#[no_mangle]
pub extern "C" fn reset_handler(tf: &trapframe) {
    
    unsafe { cli(); }
    cprintf!("reset at: 0x{}\n", tf.pc);
}

/// Undefined instruction handler
#[no_mangle]
pub extern "C" fn und_handler(tf: &trapframe) {
    unsafe { cli(); }
    cprintf!("und at: 0x{}\n", tf.pc);
}

/// Data abort handler
#[no_mangle]
pub extern "C" fn dabort_handler(tf: &trapframe) {
    let dfs: u32;
    let fa: u32;

    unsafe {
        cli();
        asm!("MRC p15, 0, {0}, c5, c0, 0", out(reg) dfs);
        asm!("MRC p15, 0, {0}, c6, c0, 0", out(reg) fa);
    }

    cprintf!("data abort: instruction 0x{}, fault addr 0x{}, reason 0x{}\n",
        tf.pc, fa, dfs);

    dump_trapframe(tf);
}

/// Prefetch abort handler
#[no_mangle]
pub extern "C" fn iabort_handler(tf: &trapframe) {
    let ifs: u32;
    unsafe {
        asm!("MRC p15, 0, {0}, c5, c0, 0", out(reg) ifs);
        cli();
    }
    cprintf!("prefetch abort at: 0x{} (reason: 0x{})\n", tf.pc, ifs);
    dump_trapframe(tf);
}

/// Not assigned handler
#[no_mangle]
pub extern "C" fn na_handler(tf: &trapframe) {
    unsafe { cli(); }
    cprintf!("n/a at: 0x{}\n", tf.pc);
}

/// FIQ handler
#[no_mangle]
pub extern "C" fn fiq_handler(tf: &trapframe) {
    unsafe { cli(); }
    cprintf!("fiq at: 0x{}\n", tf.pc);
}

/// Trap initialization (setup exception vectors + stacks)
pub fn trap_init() {
    const LDR_PCPC: u32 = 0xE59FF000;
    let ram_start = VEC_TBL as *mut u32;
    let modes = [FIQ_MODE, IRQ_MODE, ABT_MODE, UND_MODE];

    unsafe {
        // setup vector table
        ptr::write_volatile(ram_start.add(0), LDR_PCPC | 0x18); // reset
        ptr::write_volatile(ram_start.add(1), LDR_PCPC | 0x18); // und
        ptr::write_volatile(ram_start.add(2), LDR_PCPC | 0x18); // swi
        ptr::write_volatile(ram_start.add(3), LDR_PCPC | 0x18); // iabort
        ptr::write_volatile(ram_start.add(4), LDR_PCPC | 0x18); // dabort
        ptr::write_volatile(ram_start.add(5), LDR_PCPC | 0x18); // n/a
        ptr::write_volatile(ram_start.add(6), LDR_PCPC | 0x18); // irq
        ptr::write_volatile(ram_start.add(7), LDR_PCPC | 0x18); // fiq

        ptr::write_volatile(ram_start.add(8), trap_reset as usize as u32);
        ptr::write_volatile(ram_start.add(9), trap_und as usize as u32);
        ptr::write_volatile(ram_start.add(10), trap_swi as usize as u32);
        ptr::write_volatile(ram_start.add(11), trap_iabort as usize as u32);
        ptr::write_volatile(ram_start.add(12), trap_dabort as usize as u32);
        ptr::write_volatile(ram_start.add(13), trap_na as usize as u32);
        ptr::write_volatile(ram_start.add(14), trap_irq as usize as u32);
        ptr::write_volatile(ram_start.add(15), trap_fiq as usize as u32);
    }

    // initialize stacks for CPU modes
    for &mode in modes.iter() {
        let stk = alloc_page();
        if stk.is_null() {
            // panic("failed to alloc memory for irq stack");
        }
        unsafe { set_stk(mode, stk as u32); }
    }
}

/// Dump trapframe registers
pub fn dump_trapframe(tf: &trapframe) {
    cprintf!("r14_svc: 0x{}\n", tf.r14_svc);
    cprintf!("   spsr: 0x{}\n", tf.spsr);
    cprintf!("     r0: 0x{}\n", tf.r0);
    cprintf!("     r1: 0x{}\n", tf.r1);
    cprintf!("     r2: 0x{}\n", tf.r2);
    cprintf!("     r3: 0x{}\n", tf.r3);
    cprintf!("     r4: 0x{}\n", tf.r4);
    cprintf!("     r5: 0x{}\n", tf.r5);
    cprintf!("     r6: 0x{}\n", tf.r6);
    cprintf!("     r7: 0x{}\n", tf.r7);
    cprintf!("     r8: 0x{}\n", tf.r8);
    cprintf!("     r9: 0x{}\n", tf.r9);
    cprintf!("    r10: 0x{}\n", tf.r10);
    cprintf!("    r11: 0x{}\n", tf.r11);
    cprintf!("    r12: 0x{}\n", tf.r12);
    cprintf!("     pc: 0x{}\n", tf.pc);
}
