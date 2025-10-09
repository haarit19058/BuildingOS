//! # Mingo Kernel
//!
//! This is the experimental OS kernel for Raspberry Pi 3.
//! It runs in a `no_std`, `no_main` bare-metal environment.


#![no_main]
#![no_std]
#![allow(unused_imports)]
#![allow(unused)]
#![allow(warnings)]


use core::{arch::global_asm, ffi::c_void};

mod bsp;
mod cpu;
mod panic_wait;
mod spinlock;
mod buddy;


use bsp::raspberrypi::*;

use crate::{memlayout::P2V, proc::sched};
mod arm;
mod params;
mod mmu;
mod memlayout;
mod proc_h;
mod proc;
mod strings;
mod vm;
mod console;

// use core::arch::global_asm;
global_asm!(include_str!("swtch.S"));
global_asm!(include_str!("trap_asm.S"));

#[allow(non_upper_case_globals)]
pub static mut cpu: *mut proc_h::cpu = core::ptr::null_mut();
const MB: u32 = 1024 * 1024;

// const u32 end = 10000;

extern "C" {
    // Linker symbol 'end' (same as C `extern void end;`)
    // We only take its address; its *value* is not read.
    static mut end_addr: u32;
}

#[no_mangle]
pub unsafe extern "C" fn kernel_main() -> ! {
    uart_init(UART0 as *mut u32);
    
    cpu = proc::cpus[0];
 // interrupt vector table in the middle of first 1MB
    let vectbl_base: u32 = memlayout::P2V_WO(VEC_TBL & mmu::PDE_MASK);

    vm::init_vmm();

    // end of kernel in physical address
    let end_phys: u32 = (&end_addr as *const u32) as u32;

    // start_free is right after kernel
    let start_free: u32 = mmu::align_up(end_phys, mmu::PT_SZ);

    let vectbl = P2V(VEC_TBL & mmu::PDE_MASK);

    // next region after vector table
    // let kernmap_start: u32 = memlayout::P2V_WO(vectbl_phys.wrapping_add(mmu::PT_SZ));
    let kernmap_start: u32 = memlayout::INIT_KERNMAP;

    // logs
    cprintf!("\n=== Memory Init Addresses ===\n");
    cprintf!("end_phys       = 0x{:08x}\n", end_phys);
    cprintf!("start_free     = 0x{:08x}\n", start_free);
    cprintf!("vectbl_phys    = 0x{:08x}\n", VEC_TBL & mmu::PDE_MASK);
    cprintf!("vectbl_virt    = 0x{:08x}\n", vectbl as u32);
    // cprintf!("vectbl_virt    = 0x{:08x}\n", vectbl_virt);
    cprintf!("kernmap_start  = 0x{:08x}\n", kernmap_start);
    cprintf!("PHYSTOP        = 0x{:08x}\n", PHYSTOP);
    cprintf!("InitKernmap        = 0x{:08x}\n", memlayout::INIT_KERNMAP);
    cprintf!("=============================\n");

    // // feed into allocator in virtual space
    vm::kpt_freerange(start_free, VEC_TBL & mmu::PDE_MASK);
    cprintf!("Freeing for vectable done\n");
    vm::kpt_freerange((VEC_TBL & mmu::PDE_MASK).wrapping_add(mmu::PT_SZ ) as u32, kernmap_start);
    cprintf!("Freeing for kernmap done\n");

    vm::paging_init(memlayout::INIT_KERNMAP, versatile_pb::PHYSTOP);
    cprintf!("Paging init done\n");

    buddy::kmem_init();
    cprintf!("Buddy system init done\n");
    buddy::kmem_init2(memlayout::P2V(memlayout::INIT_KERNMAP) as *mut c_void, memlayout::P2V(versatile_pb::PHYSTOP) as *mut c_void);
    cprintf!("Buddy system init2 done\n");
    picirq::pic_init(memlayout::P2V(picirq::VIC_BASE as u32));     // interrupt controller
    cprintf!("PIC init done\n");
    uart::uart_enable_rx();            // enable UART RX interrupt
    cprintf!("UART RX enabled\n");
    
    console::consoleinit();               // init console
    cprintf!("Console init done\n");
    proc::pinit();           
    cprintf!("Process table init done\n");
    
    timer::timer_init(params::HZ);              // initialize the timer ticker
    cprintf!("Timer init done\n");
    
    // Enable interrupts (sti)
    arm::sti();
    cprintf!("Interrupts enabled\n");
    
    // Start the first user process and scheduler
    proc::userinit();                  // create first user process
    cprintf!("First user process created\n");

    proc::scheduler();                 // start running processes
    cprintf!("should not reach here\n");
    // loop{}
}
