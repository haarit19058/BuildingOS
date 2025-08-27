use core::ptr;

// const UART0: usize = 0x3F201000; // Example MMIO base for Raspberry Pi UART
// const VEC_TBL: usize = 0x00000000;
// const KERNBASE: usize = 0x80000000;
// const DEVBASE: usize = 0x10000000;
// const INIT_KERNMAP: usize = 0x1000_0000;
// const DEV_MEM_SZ: usize = 0x0100_0000;
// const UADDR_BITS: usize = 32;
// const NUM_UPDE: usize = 4096;

static mut KERNEL_PGTBL: [u32; NUM_UPDE] = [0; NUM_UPDE];
static mut USER_PGTBL: [u32; NUM_UPDE] = [0; NUM_UPDE];

// Simple UART output
pub fn uart_putc(c: u8) {
    unsafe {
        let uart0 = UART0 as *mut u8;
        ptr::write_volatile(uart0, c);
    }
}

pub fn puts(s: &str) {
    for &b in s.as_bytes() {
        uart_putc(b);
    }
}

pub fn putint(prefix: Option<&str>, val: u32, suffix: Option<&str>) {
    let hex = b"0123456789ABCDEF";

    if let Some(p) = prefix {
        puts(p);
    }

    for shift in (0..32).rev().step_by(4) {
        let digit = ((val >> shift) & 0xF) as usize;
        uart_putc(hex[digit]);
    }

    if let Some(s) = suffix {
        puts(s);
    }
}

// Page table helpers
pub fn get_pde(virt: u32) -> u32 {
    let idx = (virt >> 20) as usize;
    unsafe { KERNEL_PGTBL[idx] }
}

pub fn set_boot_pgtbl(mut virt: u32, mut phy: u32, len: u32, dev_mem: bool) {
    virt >>= 20;
    phy >>= 20;
    let len = len >> 20;

    for _ in 0..len {
        let mut pde = phy << 20;

        if !dev_mem {
            const AP_KO: u32 = 0b10;
            const PE_CACHE: u32 = 1 << 3;
            const PE_BUF: u32 = 1 << 2;
            const KPDE_TYPE: u32 = 1;
            pde |= (AP_KO << 10) | PE_CACHE | PE_BUF | KPDE_TYPE;
        } else {
            const AP_KO: u32 = 0b10;
            const KPDE_TYPE: u32 = 1;
            pde |= (AP_KO << 10) | KPDE_TYPE;
        }

        unsafe {
            if (virt as usize) < NUM_UPDE {
                USER_PGTBL[virt as usize] = pde;
            } else {
                KERNEL_PGTBL[virt as usize] = pde;
            }
        }

        virt += 1;
        phy += 1;
    }
}

// Flush all TLBs
pub fn flush_all() {
    unsafe { core::arch::asm!("MCR p15, 0, r0, c8, c7, 0") }
}

// Load page tables and enable MMU
pub fn load_pgtbl(kernel: *const u32, user: *const u32) {
    unsafe {
        let mut val: u32;

        // Check ARM version
        let ret: u32;
        core::arch::asm!("MRC p15, 0, {0}, c0, c0, 0", out(reg) ret);
        let arch = (ret >> 16) & 0x0F;
        if arch != 7 && arch != 0xF {
            puts("need ARM v6 or higher\n");
        }

        // Invalidate TLB
        val = 0x55555555;
        core::arch::asm!("MCR p15, 0, {0}, c3, c0, 0", in(reg) val);

        // Set domain access
        val = 32 - UADDR_BITS as u32;
        core::arch::asm!("MCR p15, 0, {0}, c2, c0, 2", in(reg) val);

        // Set TTBRs
        core::arch::asm!("MCR p15, 0, {0}, c2, c0, 1", in(reg) kernel);
        core::arch::asm!("MCR p15, 0, {0}, c2, c0, 0", in(reg) user);

        // Enable MMU
        core::arch::asm!("MRC p15, 0, {0}, c1, c0, 0", out(reg) val);
        val |= 0x80300D;
        core::arch::asm!("MCR p15, 0, {0}, c1, c0, 0", in(reg) val);

        flush_all();
    }
}

// Clear BSS
pub fn clear_bss(edata: *mut u8, end: *mut u8) {
    unsafe {
        let size = end as usize - edata as usize;
        ptr::write_bytes(edata, 0, size);
    }
}

// Boot entry
pub fn start() {
    puts("starting xv6 for ARM...\n");

    set_boot_pgtbl(0, 0, INIT_KERNMAP as u32, false);
    set_boot_pgtbl(KERNBASE as u32, 0, INIT_KERNMAP as u32, false);
    set_boot_pgtbl(KERNBASE as u32 + DEVBASE as u32, DEVBASE as u32, DEV_MEM_SZ as u32, true);

    load_pgtbl(unsafe { KERNEL_PGTBL.as_ptr() }, unsafe { USER_PGTBL.as_ptr() });

    // jump_stack(); // Platform-specific, keep as external
    // clear_bss();
    // kmain();      // Start kernel main
}
