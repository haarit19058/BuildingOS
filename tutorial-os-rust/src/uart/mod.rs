use core::ptr;

const MMIO_BASE: usize = 0x3F000000; // Pi3 default, change to 0xFE000000 on Pi4
const UART0_BASE: usize = MMIO_BASE + 0x201000;

const UART0_DR: usize = UART0_BASE + 0x00;
const UART0_FR: usize = UART0_BASE + 0x18;

pub struct Uart;

impl Uart {
    pub const fn new() -> Self {
        Uart
    }

    pub fn putc(&self, c: u8) {
        unsafe {
            // Wait until TX FIFO not full
            while ptr::read_volatile(UART0_FR as *const u32) & (1 << 5) != 0 {}
            ptr::write_volatile(UART0_DR as *mut u32, c as u32);
        }
    }

    pub fn puts(&self, s: &str) {
        for b in s.bytes() {
            if b == b'\n' {
                self.putc(b'\r'); // convert LF -> CRLF
            }
            self.putc(b);
        }
    }
}
