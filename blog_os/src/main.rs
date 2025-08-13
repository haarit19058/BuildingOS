#![no_std] // dont link the rust standard library
#![no_main] // disable all rust level entry points

mod vga_buffer;

use core::panic::PanicInfo;


#[unsafe(no_mangle)] // dont mangle the name of this function
pub extern "C" fn _start() -> ! {
    println!("Hello World{}", "!");

    loop {}
}

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    println!("{}", info);
    loop {}
}



// no nedd for main
// fn main() {
//     println!("Hello, world!");
// }



// rustup target add aarch64-unknown-none
// cargo build --target aarch64-unknown-none

