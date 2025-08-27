#![no_std]  // dont link the rust standard library you only get core
#![no_main] // there is no c style main(). You'll provide you own entyr symbol (_start) the the linker or bootloader jumps to


// use core::ptr;

//
mod versatile_pb_h;

// types declaration done now moving on to the next one
mod types_h;

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

// 
mod uart;

// 
mod vm;

mod spinlock_h;

mod arm;

mod buddy;

mod fs;
mod fs_h;
mod buf_h;
mod file_h;
mod stat_h;
mod file;



// use crate::{
//     arm_h::*,        // UART0, VIC_BASE, P2V, P2V_WO, etc.
//     // defs::*,       // function declarations (if you keep them here)
//     memlayout_h::*,  // INIT_KERNMAP, PHYSTOP
//     mmu_h::*,        // paging_init, PT_SZ, PDE_MASK, etc.
//     param_h::*,      // NCPU
//     proc_h::*,       // proc_h::cpu struct
//     // other modules (vm, console, device drivers, etc.)
// };

// In no_std, you must say what to do on panic. Here you spin forever.
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
pub static mut cpus: [proc_h::cpu; params_h::NCPU] = unsafe { core::mem::zeroed() };


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
        cpu = &mut cpus[0] as *mut proc_h::cpu;

        // Initialize UART (device/uart.c equivalent)
        // P2V is assumed to convert physical to virtual addresses as in your environment.
        // uart::uart_init(memlayout_h::P2V(versatile_pb_h::UART0));

        // Interrupt vector table is in the middle of first 1MB. We use the leftover for page tables.
        // VEC_TBL & PDE_MASK is a constant expression similar to the C version.
        let mut vectbl: u32 = memlayout_h::P2V_WO(versatile_pb_h::VEC_TBL & mmu_h::PDE_MASK);

        //
        // VM & memory initialization (vm.c in C)
        //
        vm::init_vmm();

        // `end` is a linker symbol; get its address as a u32 and align up to PT_SZ.
        // align_up is expected to be defined elsewhere and returns an address (u32).
        let end_addr = &end as *const u8 as u32;
        let start_free = align_up(end_addr, PT_SZ);

        // Custom memory allocator setup for ARM (kpt_freerange expects addresses)
        kpt_freerange(start_free, vectbl);
        kpt_freerange(vectbl + PT_SZ, P2V_WO(INIT_KERNMAP));
        paging_init(INIT_KERNMAP, PHYSTOP);
        kmem_init();
        kmem_init2(P2V(INIT_KERNMAP), P2V(PHYSTOP));

        // Trap/interrupt and device initialization
        trap_init();                 // vector table and stacks for models
        pic_init(P2V(VIC_BASE));     // interrupt controller
        uart_enable_rx();            // enable UART RX interrupt

        consoleinit();               // init console
        pinit();                     // process table (locks)

        binit();                     // buffer cache
        fileinit();                  // file table
        iinit();                     // inode cache
        ideinit();                   // IDE device init
        timer_init(HZ);              // initialize the timer ticker

        // Enable interrupts (sti)
        sti();

        // Start the first user process and scheduler
        userinit();                  // create first user process
        scheduler();                 // start running processes

        // kmain in kernel never returns; spin forever as a fallback.
        loop {
            // halt or wait for interrupt - prefer architecture-specific wfi or similar
            cpu_relax();
        }
    }
}

#[inline(always)]
fn cpu_relax() {
    // If you have an architecture instruction like `wfi`, call it here.
    // Otherwise a simple compiler hint:
    core::sync::atomic::spin_loop_hint();
}