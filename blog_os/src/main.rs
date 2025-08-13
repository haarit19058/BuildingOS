#![no_std] // dont link the rust standard library
#![no_main] // disable all rust level entry points

use core::panic::PanicInfo;

#[unsafe(no_mangle)] // dont mangle the name of this function
pub extern "C" fn _start() ->!{
    // this function is the entry point, since the linker looks for a function
    // named _start by default
    loop {}
}

#[panic_handler]
fn panic(_info: &PanicInfo)->!{
    loop{}
}



// no nedd for main
// fn main() {
//     println!("Hello, world!");
// }



// rustup target add aarch64-unknown-none
// cargo build --target aarch64-unknown-none

