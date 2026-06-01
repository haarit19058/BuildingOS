#![no_std]
#![no_main]
// #![feature(asm)]
#![allow(unused)]
use core::panic::PanicInfo;

const RP1_BASE: usize = 0x4000_0000;
const UART0_BASE: usize = RP1_BASE + 0x0003_0000; // from RP1 peripheral doc
const IO_BANK0_BASE: usize = RP1_BASE + 0x000d_0000; // IO_BANK0 base

// PL011 register offsets
const UART_DR: usize   = 0x00;
const UART_RSR: usize  = 0x04;
const UART_FR: usize   = 0x18;
const UART_IBRD: usize = 0x24;
const UART_FBRD: usize = 0x28;
const UART_LCRH: usize = 0x2C;
const UART_CR: usize   = 0x30;
const UART_IMSC: usize = 0x38;
const UART_ICR: usize  = 0x44;

// IO_BANK0: per-pin CTRL register offset formula (see RP1 doc Table)
#[inline(always)]
fn io_bank0_ctrl(n: usize) -> usize {
    // RP1 doc shows per-pin CTRL at IO_BANK0 + 0x004 + 0x008 * n (see RP1 docs)
    IO_BANK0_BASE + 0x4 + 8 * n
}

#[inline(always)]
unsafe fn mmio_read(addr: usize) -> u32 {
    core::ptr::read_volatile(addr as *const u32)
}
#[inline(always)]
unsafe fn mmio_write(addr: usize, val: u32) {
    core::ptr::write_volatile(addr as *mut u32, val)
}

fn gpio_set_uart_on_14_15() {
    // Set GPIO14 -> UART0_TX and GPIO15 -> UART0_RX
    // From RP1 function table: FUNCSEL value for UART0_TX/UART0_RX is the function index shown
    // in the RP1 doc table. Here we use the function numbers shown in the table (e.g. FUNCSEL = 14/15 -> see doc).
    // Replace FUNCSEL values below with the exact values from the RP1 table if different.
    const FUNC_UART0_TX: u32 = 14; // <<--- check table in RP1 doc and adjust if needed
    const FUNC_UART0_RX: u32 = 15; // <<--- check table in RP1 doc and adjust if needed

    unsafe {
        // Write CTRL.FUNCSEL for gpio14
        let off14 = io_bank0_ctrl(14);
        let v14 = mmio_read(off14);
        // FUNCSEL field is low bits; mask width depends on doc (use 5 bits typically)
        let new14 = (v14 & !0x1F) | (FUNC_UART0_TX & 0x1F);
        mmio_write(off14, new14);

        // gpio15
        let off15 = io_bank0_ctrl(15);
        let v15 = mmio_read(off15);
        let new15 = (v15 & !0x1F) | (FUNC_UART0_RX & 0x1F);
        mmio_write(off15, new15);
    }
}

fn uart_init_115200() {
    // For PL011:
    // IBRD = floor(UARTCLK / (16 * baud))
    // FBRD = round((frac * 64))
    const UARTCLK: u32 = 48_000_000; // typical clk_uart on RP1 (see RP1 doc)
    const BAUD: u32 = 115_200;
    let baud_div: f64 = (UARTCLK as f64) / (16.0 * BAUD as f64);
    let ibrd = baud_div as u32;
    let fbrd = ((baud_div - (ibrd as f64)) * 64.0 + 0.5) as u32;

    unsafe {
        // Disable UART (CR=0) while configuring
        mmio_write(UART0_BASE + UART_CR, 0);

        // Clear interrupts
        mmio_write(UART0_BASE + UART_ICR, 0x7FF);

        // Set integer & fractional baud rate
        mmio_write(UART0_BASE + UART_IBRD, ibrd);
        mmio_write(UART0_BASE + UART_FBRD, fbrd);

        // LCR_H: enable FIFO (FEN) and set word length to 8 bits (WLEN=3)
        // WLEN bits are bits [6:5] -> 3 << 5 = 0x60 ; FEN = 1<<4 = 0x10
        mmio_write(UART0_BASE + UART_LCRH, (3 << 5) | (1 << 4));

        // Enable UART, TX and RX in CR:
        // UARTEN = 1 (bit 0), TXE = 1 (bit 8), RXE = 1 (bit 9)
        mmio_write(UART0_BASE + UART_CR, (1 << 0) | (1 << 8) | (1 << 9));
    }
}

fn uart_putc(ch: u8) {
    unsafe {
        // Wait until TX FIFO not full: FR.TXFF (bit 5) == 0
        while (mmio_read(UART0_BASE + UART_FR) & (1 << 5)) != 0 {}
        mmio_write(UART0_BASE + UART_DR, ch as u32);
    }
}

fn uart_getc() -> Option<u8> {
    unsafe {
        // Check RXFE (bit 4) — receive FIFO empty when 1
        if (mmio_read(UART0_BASE + UART_FR) & (1 << 4)) != 0 {
            None
        } else {
            let v = mmio_read(UART0_BASE + UART_DR) as u8;
            Some(v)
        }
    }
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! { loop {} }

#[no_mangle]
pub extern "C" fn _start_rust() -> ! {
    gpio_set_uart_on_14_15(); // set GPIO14/15 to UART0 function per RP1 doc
    uart_init_115200();

    let s = b"RP5 PL011 hello 115200\r\n";
    for &b in s { uart_putc(b); }

    loop {
        if let Some(c) = uart_getc() {
            // echo
            if c == b'\r' { uart_putc(b'\n'); }
            uart_putc(c);
        }
    }
}
