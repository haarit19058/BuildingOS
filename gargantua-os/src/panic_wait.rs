use core::panic::PanicInfo;

//--------------------------------------------------------------------------------------------------
// Private Code
//--------------------------------------------------------------------------------------------------
use crate::{bsp::raspberrypi::*, cprintf};

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    cprintf!("Panic panic panic");
    // unimplemented!()
    loop {
        
    }
}
