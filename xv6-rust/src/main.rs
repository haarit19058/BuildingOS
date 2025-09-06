#![no_std]  // dont link the rust standard library you only get core
#![no_main] // there is no c style main(). You'll provide you own entyr symbol (_start) the the linker or bootloader jumps to
// #![allow(warnings)]
// #![feature(asm_experimental_arch)]
// #![cfg(target_arch = "arm")]
// use core::ptr;


// mod versatile_pb_h;


// types declaration done now moving on to the next one
mod types_h;
use core::ffi::c_void;
mod versatile_pb_h;
// file looks good here
mod params_h;

// arm
mod arm_h;

// proc
mod proc_h;
// in proc.rs define all the needed stuff like proc and things not done in proc_h file  like in c

// reminder to change all the u32 to u32

// done and dusted
mod memlayout_h;


// done and dusted
mod mmu_h;

#[macro_use] 
pub mod uart;


// 
mod vm;

mod spinlock_h;

mod arm;

mod buddy;
mod memide;
mod fs;
mod fs_h;
mod buf_h;
mod file_h;
mod stat_h;
mod file;
mod trap;
mod picirq;
mod syscall_h;
mod proc;
mod bio;
mod log;
// mod trap_h;
mod string_h;
mod syscall;
mod timer;
mod console;
mod pipe;



// use crate::memlayout_h; // memlayout_h::INIT_KERNMAP, versatile_pb_h::PHYSTOP
// use crate::{
//     arm_h::*,        // UART0, VIC_BASE, memlayout_h::P2V, P2V_WO, etc.
//     // defs::*,       // function declarations (if you keep them here)
    // mmu_h::*,        // paging_init, PT_SZ, PDE_MASK, etc.
//     param_h::*,      // NCPU
//     proc_h::*,       // proc_h::cpu struct
//     // other modules (vm, console, device drivers, etc.)
// };

// In no_std, you must say what to do on panic. Here you spin forever.
use core::panic::PanicInfo;
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

// Linker symbol: end of kernel binary in memory (provided by the linker script)
extern "C" {
    /// `end` is defined by the linker script; treat it as a byte in memory.
    static mut end: u8;
}

#[allow(non_upper_case_globals)]


#[allow(non_upper_case_globals)]
pub static mut cpu: *mut proc_h::cpu = core::ptr::null_mut();
const MB: u32 = 1024 * 1024;

#[no_mangle]
pub extern "C" fn kmain() -> ! {
    // Most of the actions here interact with global mutable state or hardware registers,
    // so put them inside an unsafe block.
    unsafe {
        // Initialize cpu pointer to CPU 0’s structure. In multiprocessor systems this
        // would be set differently per core, but here it’s uniprocessor.
        cpu = proc::cpus[0];

        // Initialize UART (device/uart.c equivalent)
        // memlayout_h::P2V is assumed to convert physical to virtual addresses as in your environment.
        uart::uart_init(memlayout_h::memlayout_h::P2V(versatile_pb_h::UART0));

        // Interrupt vector table is in the middle of first 1MB. We use the leftover for page tables.
        // VEC_TBL & PDE_MASK is a constant expression similar to the C version.
        let  vectbl: u32 = memlayout_h::P2V_WO(versatile_pb_h::VEC_TBL & mmu_h::PDE_MASK);

        //
        // VM & memory initialization (vm.c in C)
        //
        vm::init_vmm();

        // `end` is a linker symbol; get its address as a u32 and align up to PT_SZ.
        // align_up is expected to be defined elsewhere and returns an address (u32).
        let end_addr = &end as *const u8 as u32;
        let start_free = mmu_h::align_up(end_addr, mmu_h::PT_SZ);

        // Custom memory allocator setup for ARM (kpt_freerange expects addresses)
        vm::kpt_freerange(start_free, vectbl);
        vm::kpt_freerange(vectbl + mmu_h::PT_SZ, memlayout_h::P2V_WO(memlayout_h::INIT_KERNMAP));
        vm::paging_init(memlayout_h::INIT_KERNMAP, versatile_pb_h::PHYSTOP);
        buddy::kmem_init();
        buddy::kmem_init2(memlayout_h::P2V(memlayout_h::INIT_KERNMAP) as *mut c_void, memlayout_h::P2V(versatile_pb_h::PHYSTOP) as *mut c_void);

        // Trap/interrupt and device initialization
        trap::trap_init();                 // vector table and stacks for models
        picirq::pic_init(memlayout_h::P2V(picirq::VIC_BASE as u32));     // interrupt controller
        uart::uart_enable_rx();            // enable UART RX interrupt

        console::consoleinit();               // init console
        proc::pinit();                     // process table (locks)

        bio::BCACHE.binit();                     // buffer cache
        file::fileinit();                  // file table
        fs::iinit();                     // inode cache
        memide::ideinit();                   // IDE device init
        timer::timer_init(params_h::HZ);              // initialize the timer ticker

        // Enable interrupts (sti)
        arm::sti();

        // Start the first user process and scheduler
        proc::userinit();                  // create first user process
        proc::scheduler();                 // start running processes
    }
}

