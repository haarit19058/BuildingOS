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

use crate::proc::sched;
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

#[no_mangle]
pub unsafe extern "C" fn kernel_main() -> ! {
    uart_init(UART0 as *mut u32);
    
    cpu = proc::cpus[0];
    // uart_init(memlayout::memlayout::P2V(versatile_pb::UART0));
    vm::init_vmm();
    extern "C" {
        static mut end_addr: u32;
    }

    let start_free = mmu::align_up(end_addr, mmu::PT_SZ);
    // let end_addr = 0x80020000  as u32;
    // Align vector table down to PT_SZ boundary, and convert to virtual address
    let vectbl_phys = mmu::align_dn(versatile_pb::VEC_TBL, mmu::PDE_SZ); // physical base of PDE that contains VEC_TBL
    let vectbl = memlayout::P2V(vectbl_phys); // virtual address of that aligned page-table area

    vm::init_vmm();

    
    let start_free_v: u32 = memlayout::P2V(start_free) as u32;
    let vectbl: u32 = memlayout::P2V(mmu::align_dn(versatile_pb::VEC_TBL, mmu::PDE_SZ)) as u32;
    cprintf!("vectbl=0x{} start_free_v=0x{} INIT_KERNMAP_v=0x{:p}\n",
            vectbl, start_free_v, memlayout::P2V(memlayout::INIT_KERNMAP));

    vm::kpt_freerange(start_free_v, vectbl);
    vm::kpt_freerange(vectbl.wrapping_add(mmu::PT_SZ), memlayout::P2V(memlayout::INIT_KERNMAP) as u32);


    vm::paging_init(memlayout::INIT_KERNMAP, versatile_pb::PHYSTOP);
    buddy::kmem_init();
    buddy::kmem_init2(memlayout::P2V(memlayout::INIT_KERNMAP) as *mut c_void, memlayout::P2V(versatile_pb::PHYSTOP) as *mut c_void);
    
    picirq::pic_init(memlayout::P2V(picirq::VIC_BASE as u32));     // interrupt controller
    uart::uart_enable_rx();            // enable UART RX interrupt

    console::consoleinit();               // init console
    proc::pinit();           

    timer::timer_init(params::HZ);              // initialize the timer ticker

    // Enable interrupts (sti)
    arm::sti();

    // Start the first user process and scheduler
    proc::userinit();                  // create first user process
    proc::scheduler();                 // start running processes
    // loop{}
}
