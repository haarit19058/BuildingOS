# I haarit chavda commits not to use any kind of llm help for writing this notes, I will just use my own brain and hands 


# Freestanding rust binary

We want to write an operating system from scratch and hence we should write it in such a way that it does not depend on any sort of system calls, features,.. 

This means that we cannot use many of the rust std lib utils. But we can use iterators, closures, pattern matching, option and result, string formatting and of course the ownership system.

Ok so lets see what are these features ..

- Iterators: objects that let you process a sequence of elements one at a time, without exposing the underlying collection's structure.

- Closures: Anonymous fucntinos that you can store in variables and use them like in javascript. Very helpful in some scenarios

- Pattern matching and sting formatting

- Ownership: It is the core system the compiler uses to ensure memory safety without a garbage collector.
Three ownership rules
1) Each value has exactly one owner at a time
2) When the owner goes out of scope the value is dropped
3) Values can be moved to new owner or borrowed temporarily


## Introduction
By default rust crates link the standard library that depends on the os for features.

It also depends on the c std lib "libc" which closely interacts with os services. 

Create a new cargo app the easiest way is
```bash
cargo new blog_os --bin --edition 2018 # or whatever its optional
```

- project structure
blog_os
    Cargo.toml
    src
        main.rs

## The no_std attribute

```rust
#![no_std]

fn main(){
    println!("Hello world");
}
```

### More about crate
crate is teh smallest unit for compilation

A crate can be
- a binary crate - produces an executable (main func)
- A library crate- produces a .rlib or .so/.dll/.a

Crates are build by rustc one at time

```rust
#![attribute_name]
// These are the attribs that apply to the entire crate not jsut one fucntion or struct.

#[attrib_name(args)]
// these applies to only one function or struct

// examples
#[derive(Debug, Clone)]
struct MyStruct {
    id: u32,
    name: &'static str,
}

#[inline(always)]
fn add(a: i32, b: i32) -> i32 {
    a + b
}
```

## panic implementation

While using #![no-std] it also removed the panic handler

panic handler attribute defines the function that the compiler should invoke when a panic occurs. Ths std provides it own panic handler

Now we need to define our own handler

```rust
// in main.rs

use core::panic::PanicInfo;

/// This function is called on panic.
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
```

```rust
// lil bit of rust here decoding teh fucntion
fn panic
- defines a function named panic

_info // parameter name and _ suggests that we are not intentionally using that variable so thta the compiler wont warn you

&PanicInfo // a reference to the PanicInfo struct it is provided by core::panic

->! // marks as diverging fucntion
// this is the never type (read as "bang" or "never")
// - it means that the function will never return

// it means that once panic is called the program execution will never come back

```


## the eh personality language item

Language items  in rust are special symbols (functions,traits,types,etc) that the compiler itself needs to know about by name in order to implemetn core lang features

They are compiler recognized building blocks that implemetns funcdmental lang behaviour.

Without them man features would stop working they're internal contract between the code and the compiler


While providing custom implementations of language items is possible, it should only be done as a last resort. The reason is that language items are highly unstable implementation details and not even type checked (so the compiler doesn’t even check if a function has the right argument types).

The eh_personality lang item marks a function that is used for implementing stack unwinding. By default rust uses unwinding to run destructors of all live stack variables in case of a panic. 

Unwinding is a complicated process and requires some os specific libraries so we dont want to use ti for our operating system

## Disabling unwinding

The following snippet disables generation of unwinding symbol info and thus considerably reduces binary size

```toml
in cargo.toml

[profile.dev]
panic = "abort"

[profile.release]
panic = "abort"
```


Now if you try to do cargo build it will say that requires start lang_item

## the start attribute
Most of the languages have a runtime system which is responsible for things such as garbage collection or software threads. This runtime needs to be called before main since it need to be initialzied itself.

In typical rust binary that links teh standard lib execution starts in C runtime library called crt0 (C runtime zero) which sets up the environment for a C application. This includes creating a stack and placing args in teh right registers.

The C runtime then invokes the entry point of the rust runtime which is marked by the start language item. Rust only has very minimal runtime that takes care of some small things such as settingupstack overflow guards o0r printing a backtrace on panic. The runtime then finally calls the main funciton

We do not have access to rust runtime and crt0 so we need to define it ourselves for us

## Overwrititng the entry point

```rust
#[unsafe(no_mangle)]
pub extern "C" fn _start() -> ! {
    loop {}
}
```

by using that attribute we disable the name mangling to ensure that the rust compiler really output a function with name _start. Otherwisr the compiler would generate some cryptic symbol to give evry fucntion a unique name.

We also mark the function as extern "C" to tell the compiler that it should use the C calling convention for this function. The reason for naming the function _start is that this is the default entry point anme for most systems.

The ! return type meant that it is diverging will never return.

This is required because teh entry point is not called by any function but invoked directly by the operating system or bootloader. So instead of returning the entyr point should invoke exit system call of the operating system. 


## Linker Errors
The linker is a program that combines the generated code into an execuatable. 

The code will create the binary of the code only now specific to the os we need to use linker. So every system have its own linker.

In our case the fundamental cause of error is same. the default configuration of the linker assumes that our programm depends on c runtime.

## Building for a bare metal target

By default rust tries to build an exe that is able to run in your current system env. For example, 

To describe different environment rust uses a string called target triple. You can see the target triple for your host system by running rustc --version --verbose

Host triple e.g. x86_64-unknown-linux-gnu

x86_64 - cpu architecture
unknown - vendor
linux - operating system
gnu - ABI

### What is an ABI

ABI is a binary level contract 
It is about how a compiled code talks to other compiled codes.

It defines the rules for how functions data, and system calls are represented in compiled binaries so that

💡 Analogy:

API = “We both agree to speak English and use these words.”

ABI = “We both agree on the same alphabet, grammar, and pronunciation so we actually understand each other.”


By passing a --target argument we cross compile our executable for a bare metal target system. Since the target system has no operating system, the linker does not try to link the C runtime and our build succeeds without any linker errors.

there is a target for aarch64 system



## Summary

```rust
// src/main.rs

#![no_std] // don't link the Rust standard library
#![no_main] // disable all Rust-level entry points

use core::panic::PanicInfo;

#[unsafe(no_mangle)] // don't mangle the name of this function
pub extern "C" fn _start() -> ! {
    // this function is the entry point, since the linker looks for a function
    // named `_start` by default
    loop {}
}

/// This function is called on panic.
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
```


```toml
# cargo.toml
[package]
name = "crate_name"
version = "0.1.0"
authors = ["Author Name <author@example.com>"]

# the profile used for `cargo build`
[profile.dev]
panic = "abort" # disable stack unwinding on panic

# the profile used for `cargo build --release`
[profile.release]
panic = "abort" # disable stack unwinding on panic
```

## Making rust analyzer happy

### rust.analyzer



The rust-analyzer project is a great way to get code completion and "go to definition" support for rust code in your editor. It works well for \#![no_std] projects too, so i recommend using kernel devlopment


If you’re using the checkOnSave feature of rust-analyzer (enabled by default), it might report an error for the panic function of our kernel:

found duplicate lang item "panic_impl"
The reason for this error is that rust-analyzer invokes cargo check --all-targets by default, which also tries to build the binary in test and benchmark mode.

```md
THe two meaning of target
--target     // refers to compilation targets

--all-targets   
Cargo packages can be a library and binary at the same time, so you can specify in which way you like to build your crate. In addition, Cargo also has package targets for examples, tests, and benchmarks. These package targets can co-exist, so you can build/check the same crate in e.g. library or test mode.
```

to disable test and bench do following

```toml
# in Cargo.toml

[[bin]]
name = "blog_os"
test = false
bench = false
```

The double-brackets around bin are not a mistake, this is how the TOML format defines keys that can appear multiple times. Since a crate can have multiple binaries, the [[bin]] section can appear multiple times in the Cargo.toml as well. This is also the reason for the mandatory name field, which needs to match the name of the binary (so that cargo knows which settings should be applied to which binary).






# A minimal Rust kernel

## The boot process

when you turn on  a computer
|
The code stored in firmware runs and performs a power on self test detects teh available RAM and pre-initializes the CPU and hardware. 
|
Then it looks for a  bootable disk and starts booting teh operating system kernel


There are two types of firmware standards: the BIOS "Basic Input/Output System(BIOS)" and the newer "Unified Extensible Firmware Interface(UEFI)". 

Currently we provide bios support bcuz adding uefi is cumbersome

## BIOS boot

[Power On]
     |
     v
[BIOS in motherboard flash]
     |
     |--> Runs POST (Power-On Self Test)
     |--> Initializes hardware
     |
     v
[Search for bootable disk]
     |
     v
[Bootable disk found]
     |
     v
[Load First Stage Bootloader (512 bytes)]
     |
     |--> Loads Second Stage Bootloader
     |
     v
[Bootloader Tasks]
     |
     |--> Locate kernel image on disk
     |--> Load kernel into memory
     |--> Switch CPU modes:
     |       16-bit Real Mode
     |       --> 32-bit Protected Mode
     |       --> 64-bit Long Mode
     |--> Get system info (e.g., memory map) from BIOS
     |--> Pass info to kernel
     |
     v
[Kernel starts executing]


## the multiboot standard
Multiboot Standard (1995) – Created by the Free Software Foundation to standardize the interface between bootloaders and operating systems, allowing any Multiboot-compliant bootloader (e.g., GNU GRUB) to load any compliant OS.

How it works: Add a Multiboot header to the kernel so GRUB can boot it easily.

Limitations:

Only supports 32-bit protected mode (you must still switch to 64-bit).

Optimized for bootloader simplicity, not kernel simplicity.

Passes architecture-dependent info rather than clean abstractions.

Sparse documentation.

Requires GRUB installed on the host, making cross-platform dev harder.

Decision: Authors chose not to use GRUB/Multiboot but plan to add Multiboot support to their bootimage tool for compatibility.


## A minimal kernel

Install rust nightly

sudo pacman -S rustup 
rustup install nightly # stable for stable version

## Target Specification

x86_64-unknown-linux-gnu.json
```json
{
    "llvm-target": "x86_64-unknown-none",
    "data-layout": "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128",
    "arch": "x86_64",
    "target-endian": "little",
    "target-pointer-width": "64",
    "target-c-int-width": 32,
    "os": "none",
    "executables": true,
    "linker-flavor": "ld.lld",
    "linker": "rust-lld",
    "panic-strategy": "abort",
    "disable-redzone": true,
    "features": "-mmx,-sse,+soft-float",
    "rustc-abi": "x86-softfloat"
}
```

- The data layout field defines the size of various integers,floating point, and pointer types. 
- target-pointer-width
- linker-flavor : ld.lld -> instead of using the platform's default linker we use the cross platform lld linker that is shipped with rust for our kernel
- panic-strategy:abort -> Specifies that the target doesn't support stack unwinding. We used the same in cargo.toml so we can remove from there. Note: this option also applies when we recompile core library so even if you prefer to keep the cargo.toml option make sure to include this option

- disable-redzone:true -> writing a kernel so we will need to handle interrupts. TO do that safely we have to disable a stack pointer optimization called "red zone", because it would cause stack corruption otherwise
- What is redzone ?? In x86-64 system teh redzone is a 128 byte area just below the current stack pointer in memory. It can be used temporarily by functions witout adjusting the stack pointer. It is supposed to save instructions and make samll leaf functions faster. When an interupt or exception occurs the cpu pushes resiter value and other state onto the kernel stack. if the function was using the red zone for temporary storage the intrupt will overwrite the data - corrupting whatever your function had stored there. We do not want such complexity in our os

- "features": "-mmx,-sse,+soft-float" 

The features field enables/disables target features. We disable the mmx and sse features by prefixing them with a minus and enable the soft-float feature by prefixing it with a plus. Note that there must be no spaces between different flags, otherwise LLVM fails to interpret the features string.

The mmx and sse features determine support for Single Instruction Multiple Data (SIMD) instructions, which can often speed up programs significantly. However, using the large SIMD registers in OS kernels leads to performance problems. The reason is that the kernel needs to restore all registers to their original state before continuing an interrupted program. This means that the kernel has to save the complete SIMD state to main memory on each system call or hardware interrupt. Since the SIMD state is very large (512–1600 bytes) and interrupts can occur very often, these additional save/restore operations considerably harm performance. To avoid this, we disable SIMD for our kernel (not for applications running on top!).

A problem with disabling SIMD is that floating point operations on x86_64 require SIMD registers by default. To solve this problem, we add the soft-float feature, which emulates all floating point operations through software functions based on normal integers.



- "rustc-abi": "x86-softfloat"
As we want to use the soft-float feature, we also need to tell the Rust compiler rustc that we want to use the corresponding ABI. We can do that by setting the rustc-abi field to x86-softfloat.

Hard float → Use the CPU’s hardware floating-point unit (FPU) to do floating-point math (fadd, fmul, etc.).

Soft float → Do floating-point math in software, using library functions (like __addsf3, __mulsf3), without relying on an FPU.


## The build-std option
It allows to recompile core  and other standard library crates on demand, instead of using precompiled versions shipped with rust installation. 

```toml
# in .cargo/config.toml

[unstable]
build-std = ["core", "compiler_builtins"]
```

This tells cargo that it should recompile the core and compiler_builtins libraries. The latter is required because it is a dependency of core. In order to recompile these libraries, cargo needs access to the rust source code, which we can install with rustup component add rust-src.

After setting the unstable.build-std configuration key and installing the rust-src component, we can rerun our build command:


## Memory related intrinsics

Here’s a concise rewrite of your text:

---

The Rust compiler relies on certain built-in functions, most of which come from the `compiler_builtins` crate. Memory functions like `memset`, `memcpy`, and `memcmp` are disabled by default because they’re normally provided by the system’s C library. Since a bare-metal kernel can’t link to that library, we must supply these functions ourselves.

Implementing them manually is risky (e.g., a `memcpy` with a `for` loop could cause infinite recursion). Instead, we can use the well-tested versions in `compiler_builtins` by enabling its `mem` feature:

```toml
# .cargo/config.toml
[unstable]
build-std-features = ["compiler-builtins-mem"]
build-std = ["core", "compiler_builtins"]
```

*(Requires Rust nightly ≥ 2020-09-30)*

This applies `#[no_mangle]` to the memory function implementations, making them available to the linker and ensuring our kernel builds as it grows.

To avoid specifying `--target` each time, set a default target:

```toml
# .cargo/config.toml
[build]
target = "x86_64-blog_os.json"
```

Now `cargo build` compiles our bare-metal kernel directly. With the setup complete, we can move on to adding code to `_start` to display output on screen.



## Printing on Screen

The easiest way to print text to the screen at this stage is the VGA text buffer. It is a special memory area mapped to the VGA hardware that contains the contents displayed on screen. It normally consists of 25 lines that each contain 80 character cells.

```rust
static HELLO: &[u8] = b"Hello World!";

#[unsafe(no_mangle)]
pub extern "C" fn _start() -> ! {
    let vga_buffer = 0xb8000 as *mut u8;

    for (i, &byte) in HELLO.iter().enumerate() {
        unsafe {
            // writing at the buffer hte most basic method to print the message
            *vga_buffer.offset(i as isize * 2) = byte;
            *vga_buffer.offset(i as isize * 2 + 1) = 0xb;
        }
    }

    loop {}
}
```


Here’s a concise rewrite:

---

We cast `0xb8000` to a raw pointer, then iterate over the `HELLO` byte string with `enumerate` to get each character and its index. Using `offset`, we write both the character byte and its color (`0xb` = light cyan) to memory.

All writes occur inside an `unsafe` block because Rust can’t guarantee our raw pointers are valid. `unsafe` doesn’t disable safety checks — it just allows certain operations the compiler can’t verify.

Direct pointer writes are error-prone, so we aim to minimize `unsafe` by building safe abstractions. For example, a `VgaBuffer` type could contain the unsafe code internally but expose only safe, memory-safe operations. We’ll create this abstraction next.


## Running the kernel

## Creating a boot image

Instead of writing our own bootloader which is a project on its own we use the bootloader crate. This crate implements a basic BIOS bootloader without any C dependencies, just rust and inline assembly.

```toml
# in cargo.toml
[dependencies]
bootloader = "0.9"
```

Adding the bootloader as a dependency is not enough to actually create a bootable disk image. The problem is that we need to link our kernel with the bootloader after compilation, but cargo has no support for post-build scripts.

To solve this problem, we created a tool named bootimage that first compiles the kernel and bootloader, and then links them together to create a bootable disk image. To install the tool, go into your home directory (or any directory outside of your cargo project) and execute the following command in your terminal:

`cargo install bootloader`

For running bootimage and building the bootloader, you need to have the llvm-tools-preview rustup component installed. You can do so by executing 
`rustup component add llvm-tools-preview`


`cargo bootimage`


After executing the command, you should see a bootable disk image named bootimage-blog_os.bin in your target/x86_64-blog_os/debug directory. You can boot it in a virtual machine or copy it to a USB drive to boot it on real hardware.


## How does it work

The bootimage tool performs the following steps behind the scenes:

It compiles our kernel to an ELF file.
It compiles the bootloader dependency as a standalone executable.
It links the bytes of the kernel ELF file to the bootloader.
When booted, the bootloader reads and parses the appended ELF file. It then maps the program segments to virtual addresses in the page tables, zeroes the .bss section, and sets up a stack. Finally, it reads the entry point address (our _start function) and jumps to it.


## Booting in qemu

`qemu-system-x86_64 -drive format=raw,file=target/x86_64-blog_os/debug/bootimage-blog_os.bin`

## Using cargo run

```toml
# in .cargo/config.toml
[target.'cfg(target_os = "none")']
runner = "bootimage runner"
```
The target.'cfg(target_os = "none")' table applies to all targets whose target configuration file’s "os" field is set to "none". This includes our x86_64-blog_os.json target. The runner key specifies the command that should be invoked for cargo run. The command is run after a successful build with the executable path passed as the first argument. See the cargo documentation for more details.

The bootimage runner command is specifically designed to be usable as a runner executable. It links the given executable with the project’s bootloader dependency and then launches QEMU. See the Readme of bootimage for more details and possible configuration options.

Now we can use cargo run to compile our kernel and boot it in QEMU.



# VGA text Mode

## The vga text buffer
To print a character to the screen in VGA text mode, one has to write it to the text buffer of the VGA hardware. The VGA text buffer is a two-dimensional array with typically 25 rows and 80 columns, which is directly rendered to the screen.


Bit(s)	    Value
0-7	        ASCII code point
8-11	    Foreground color
12-14	    Background color
15	        Blink

The second byte defines how the character is displayed. The first four bits define the foreground color, the next three bits the background color, and the last bit whether the character should blink. The following colors are available:

Number	Color	Number + Bright Bit	Bright Color
0x0	    Black	0x8	            Dark Gray
0x1	    Blue	0x9	            Light Blue
0x2	    Green	0xa	            Light Green
0x3	    Cyan	0xb	            Light Cyan
0x4	    Red	    0xc	            Light Red
0x5	    Magenta	0xd	            Pink
0x6	    Brown	0xe	            Yellow
0x7	    Light Gray	0xf	        White

The VGA text buffer is accessible via memory-mapped I/O to the address 0xb8000. This means that reads and writes to that address don’t access the RAM but directly access the text buffer on the VGA hardware. This means we can read and write it through normal memory operations to that address.


## A rust module
Now that we know how the VGA buffer works, we can create a Rust module to handle printing:

// in src/main.rs
mod vga_buffer;

For the content of this module, we create a new src/vga_buffer.rs file. All of the code below goes into our new module (unless specified otherwise).


## Colors
first we represent the different colors using enum:

```rust
// in src/vga_buffer.rs

#[allow(dead_code)]
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
#[repr(u8)]
pub enum Color {
    Black = 0,
    Blue = 1,
    Green = 2,
    Cyan = 3,
    Red = 4,
    Magenta = 5,
    Brown = 6,
    LightGray = 7,
    DarkGray = 8,
    LightBlue = 9,
    LightGreen = 10,
    LightCyan = 11,
    LightRed = 12,
    Pink = 13,
    Yellow = 14,
    White = 15,
}
```

We use a C like enum here to explicitly specify the number of each color. Because of repr(u8) attribute ech enum is stored as u8. 4 bits would be sufficient but rust do not have a u4 type

Normally compiler would issue a warning for each unused variant. By using the `#[allow(dead_code)]` attribute we disable these warnings for the color emun

By deriving the Copy, Clone, Debug, PartialEq, and Eq traits, we enable copy semantics for the type and make it printable and comparable.

**Repr() is an attribute that tells teh compiler how to layout the type data in memory**

To represent a full color code that specifies foreground and background color, we create a newtype on top of u8:

```rust
// in src/vga_buffer.rs

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
#[repr(transparent)]
struct ColorCode(u8);

impl ColorCode {
    fn new(foreground: Color, background: Color) -> ColorCode {
        ColorCode((background as u8) << 4 | (foreground as u8))
    }
}
```

- \#[repr(transparent)] This type should have exactly the same memory layout and abi as its single non zero sized field.
- impl - means implementation- it is how you define methods assiociated functinos and trait implementations for a type
- Traits - are kind of like interfaces in other language they difne a set of methdos  - think of type as the one, then you have traits for that type and imple for implementing traits and methods will be clear once we start usign it

More on #[derive(Debug, Clone, Copy, PartialEq, Eq)]

derive - a compiler feature tha lets you auto implement common traits without writing them manually.

Traits
debug - Lets you print the value with {:?} or {:#?} in println!
clone - lets you make a deep copy with .clone()
copy - makes the type copyable by simple bitwise copy instead of moving it only workds for simple, fixed size type without heap allocations
partialeq - allows == and != comparisons
eq - marker trait says that x == y is always reflexive



## Text buffer



```rust
// in src/vga_buffer.rs

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
#[repr(C)]
struct ScreenChar {
    ascii_character: u8,
    color_code: ColorCode,
}

const BUFFER_HEIGHT: usize = 25;
const BUFFER_WIDTH: usize = 80;

#[repr(transparent)]
struct Buffer {
    chars: [[ScreenChar; BUFFER_WIDTH]; BUFFER_HEIGHT],
}
```

we need the repr(C) attribute. It guarantees that the struct’s fields are laid out exactly like in a C struct and thus guarantees the correct field ordering.

```rust
// in src/vga_buffer.rs

pub struct Writer {
    column_position: usize,
    color_code: ColorCode,
    buffer: &'static mut Buffer,
}
```

The writer will always write to the last line and shift lines up when a line is full (or on \n). The column_position field keeps track of the current position in the last row. The current foreground and background colors are specified by color_code and a reference to the VGA buffer is stored in buffer. Note that we need an explicit lifetime here to tell the compiler how long the reference is valid. The 'static lifetime specifies that the reference is valid for the whole program run time (which is true for the VGA text buffer).

## Printing


VGA supports only code page 437 characters and not all teh ascii

```rust
// in src/vga_buffer.rs

pub struct Writer {
    column_position: usize,
    color_code: ColorCode,
    buffer: &'static mut Buffer,
}

impl Writer {
    pub fn write_byte(&mut self, byte: u8) {
        match byte {
            // if the byte is a newline then move on to the next line
            b'\n' => self.new_line(),
            byte => {
                // if teh buffer exceeds the capacity move on to the next line

                if self.column_position >= BUFFER_WIDTH {
                    self.new_line();
                }

                let row = BUFFER_HEIGHT - 1;
                let col = self.column_position;

                let color_code = self.color_code;
                self.buffer.chars[row][col] = ScreenChar {
                    ascii_character: byte,
                    color_code,
                };
                self.column_position += 1;
            }
        }
    }

    fn new_line(&mut self) {/* TODO */}


    // to write whole strings we can convert them to bytes one by one
    pub fn write_string(&mut self, s: &str) {
        for byte in s.bytes() {
            match byte {
                // printable ASCII byte or newline
                0x20..=0x7e | b'\n' => self.write_byte(byte),
                // not part of printable ASCII range
                _ => self.write_byte(0xfe),
            }

        }
    }
}

pub fn print_something() {
    let mut writer = Writer {
        column_position: 0,
        color_code: ColorCode::new(Color::Yellow, Color::Black),
        buffer: unsafe { &mut *(0xb8000 as *mut Buffer) },
    };

    writer.write_byte(b'H');
    writer.write_string("ello ");
    writer.write_string("Wörld!");
}
```

Lets try it out 
```rust
// in src/main.rs

#[unsafe(no_mangle)]
pub extern "C" fn _start() -> ! {
    vga_buffer::print_something();

    loop {}
}
```

- Do cargo run and you must find hello world written on your screen

Why rust is soo so smart ??
The problem is that we only write to the Buffer and never read from it again. The compiler doesn’t know that we really access VGA buffer memory (instead of normal RAM) and knows nothing about the side effect that some characters appear on the screen. So it might decide that these writes are unnecessary and can be omitted. To avoid this erroneous optimization, we need to specify these writes as volatile. This tells the compiler that the write has side effects and should not be optimized away.

In order to use volatile writes for the VGA buffer, we use the volatile library. This crate (this is how packages are called in the Rust world) provides a Volatile wrapper type with read and write methods. These methods internally use the read_volatile and write_volatile functions of the core library and thus guarantee that the reads/writes are not optimized away.


Instead of a ScreenChar, we’re now using a Volatile<ScreenChar>. (The Volatile type is generic and can wrap (almost) any type). This ensures that we can’t accidentally write to it “normally”. Instead, we have to use the write method now.

```toml
# in cargo.toml
[dependencies]
volatile = "0.2.6"
```

Update the buffer in following way

```rust
use volatile::Volatile;

struct Buffer {
    chars: [[Volatile<ScreenChar>; BUFFER_WIDTH]; BUFFER_HEIGHT],
}
```

To use volatile we need to do the following changes to writer funct in vga buffer

```rust
// in src/vga_buffer.rs

impl Writer {
    pub fn write_byte(&mut self, byte: u8) {
        match byte {
            b'\n' => self.new_line(),
            byte => {
                ...

                self.buffer.chars[row][col].write(ScreenChar {
                    ascii_character: byte,
                    color_code,
                });
                ...
            }
        }
    }
    ...
}
```

## Formatting macros

It would be nice to support Rust’s formatting macros, too. That way, we can easily print different types, like integers or floats. To support them, we need to implement the core::fmt::Write trait. The only required method of this trait is write_str, which looks quite similar to our write_string method, just with a fmt::Result return type:

```rust
// in src/vga_buffer.rs

use core::fmt;

impl fmt::Write for Writer {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        self.write_string(s);
        Ok(())
    }
}
```
core::fmt is the module that contains Rust’s formatting machinery — the stuff behind println!, format!, etc.
If you implement fmt::Write for your type, you can use Rust’s formatting macros (write!, writeln!, format_args!) to write directly into your type.


the ok() is just a OK result containing () type

Now we can use rust built in write! / writeln! formatting macros:

```rust
// in src/vga_buffer.rs

pub fn print_something() {
    use core::fmt::Write;
    let mut writer = Writer {
        column_position: 0,
        color_code: ColorCode::new(Color::Yellow, Color::Black),
        buffer: unsafe { &mut *(0xb8000 as *mut Buffer) },
    };

    writer.write_byte(b'H');
    writer.write_string("ello! ");
    write!(writer, "The numbers are {} and {}", 42, 1.0/3.0).unwrap();
}
```

The write! call returns a Result which causes a warning if not used, so we call the unwrap function on it, which panics if an error occurs. This isn’t a problem in our case, since writes to the VGA buffer never fail.

.unwrap() - is a method you can call on an option\<\T> or result \<\T,\E> to forcefully take the value inside



## NewLines
Right now, we just ignore newlines and characters that don’t fit into the line anymore. Instead, we want to move every character one line up (the top line gets deleted) and start at the beginning of the last line again. To do this, we add an implementation for the new_line method of Writer:

```rust
// in src/vga_buffer.rs

impl Writer {
    fn new_line(&mut self) {
        for row in 1..BUFFER_HEIGHT {
            for col in 0..BUFFER_WIDTH {
                let character = self.buffer.chars[row][col].read();
                self.buffer.chars[row - 1][col].write(character);
            }
        }
        self.clear_row(BUFFER_HEIGHT - 1);
        self.column_position = 0;
    }

    fn clear_row(&mut self, row: usize) {
        let blank = ScreenChar {
            ascii_character: b' ',
            color_code: self.color_code,
        };
        for col in 0..BUFFER_WIDTH {
            self.buffer.chars[row][col].write(blank);
        }
    }
}
```


## Global Interface
To provide a global writer that can be used as an interface from other modules without carrying a writer instance around, 

```rust
// in src/vga_buffer.rs
// one global writer that we can use for all code
pub static WRITER: Writer = Writer {
    column_position: 0,
    color_code: ColorCode::new(Color::Yellow, Color::Black),
    buffer: unsafe { &mut *(0xb8000 as *mut Buffer) },
};
```

but if you try to compile you will see ome errors here


To understand what’s happening here, we need to know that statics are initialized at compile time, in contrast to normal variables that are initialized at run time. The component of the Rust compiler that evaluates such initialization expressions is called the “const evaluator”. Its functionality is still limited, but there is ongoing work to expand it, for example in the “Allow panicking in constants” RFC.

The issue with ColorCode::new would be solvable by using const functions, but the fundamental problem here is that Rust’s const evaluator is not able to convert raw pointers to references at compile time. Maybe it will work someday, but until then, we have to find another solution.

It is supported in 2025 but i will move withh the guide

## lazy statics

The one-time initialization of statics with non-const functions is a common problem in Rust. Fortunately, there already exists a good solution in a crate named lazy_static. This crate provides a lazy_static! macro that defines a lazily initialized static. Instead of computing its value at compile time, the static lazily initializes itself when accessed for the first time. Thus, the initialization happens at runtime, so arbitrarily complex initialization code is possible.

```toml
# in Cargo.toml

[dependencies.lazy_static]
version = "1.0"
features = ["spin_no_std"]
```


```rust
// in src/vga_buffer.rs

use lazy_static::lazy_static;

lazy_static! {
    pub static ref WRITER: Writer = Writer {
        column_position: 0,
        color_code: ColorCode::new(Color::Yellow, Color::Black),
        buffer: unsafe { &mut *(0xb8000 as *mut Buffer) },
    };
}
```

However, this WRITER is pretty useless since it is immutable. This means that we can’t write anything to it (since all the write methods take &mut self). One possible solution would be to use a mutable static. But then every read and write to it would be unsafe since it could easily introduce data races and other bad things. Using static mut is highly discouraged. There were even proposals to remove it. But what are the alternatives? We could try to use an immutable static with a cell type like RefCell or even UnsafeCell that provides interior mutability. But these types aren’t Sync (with good reason), so we can’t use them in statics.

## Spinlocks

To get synchronized interior mutability, users of the standard library can use Mutex. It provides mutual exclusion by blocking threads when the resource is already locked. But our basic kernel does not have any blocking support or even a concept of threads, so we can’t use it either. However, there is a really basic kind of mutex in computer science that requires no operating system features: the spinlock. Instead of blocking, the threads simply try to lock it again and again in a tight loop, thus burning CPU time until the mutex is free again.

To use a spinning mutex, we can add the spin crate as a dependency:

```toml
# in Cargo.toml
[dependencies]
spin = "0.5.2"
Then we can use the spinning mutex to add safe interior mutability to our static WRITER:
```

```rust
// in src/vga_buffer.rs

use spin::Mutex;
...
lazy_static! {
    pub static ref WRITER: Mutex<Writer> = Mutex::new(Writer {
        column_position: 0,
        color_code: ColorCode::new(Color::Yellow, Color::Black),
        buffer: unsafe { &mut *(0xb8000 as *mut Buffer) },
    });
}
```
Now we can delete the print_something function and print directly from our _start function:

```rust
// in src/main.rs
#[unsafe(no_mangle)]
pub extern "C" fn _start() -> ! {
    use core::fmt::Write;
    vga_buffer::WRITER.lock().write_str("Hello again").unwrap();
    write!(vga_buffer::WRITER.lock(), ", some numbers: {} {}", 42, 1.337).unwrap();

    loop {}
}
```
We need to import the fmt::Write trait in order to be able to use its functions.


## Safety
Note that we only have a single unsafe block in our code, which is needed to create a Buffer reference pointing to 0xb8000. Afterwards, all operations are safe. Rust uses bounds checking for array accesses by default, so we can’t accidentally write outside the buffer. Thus, we encoded the required conditions in the type system and are able to provide a safe interface to the outside.

## A println macro

Now that we have a global writer, we can add a println macro that can be used from anywhere in the codebase. Rust’s macro syntax is a bit strange, so we won’t try to write a macro from scratch. Instead, we look at the source of the println! macro in the standard library:

```rust
#[macro_export]
macro_rules! println {
    () => (print!("\n"));
    ($($arg:tt)*) => (print!("{}\n", format_args!($($arg)*)));
}
```

Macros are defined through one or more rules, similar to match arms. The println macro has two rules: The first rule is for invocations without arguments, e.g., println!(), which is expanded to print!("\n") and thus just prints a newline. The second rule is for invocations with parameters such as println!("Hello") or println!("Number: {}", 4). It is also expanded to an invocation of the print! macro, passing all arguments and an additional newline \n at the end.

The `#[macro_export]` attribute makes the macro available to the whole crate (not just the module it is defined in) and external crates. It also places the macro at the crate root, which means we have to import the macro through use std::println instead of std::macros::println.

The print! macro is defined as:

```rust
#[macro_export]
macro_rules! print {
    ($($arg:tt)*) => ($crate::io::_print(format_args!($($arg)*)));
}
```

The macro expands to a call of the _print function in the io module. The $crate variable ensures that the macro also works from outside the std crate by expanding to std when it’s used in other crates.

The format_args macro builds a fmt::Arguments type from the passed arguments, which is passed to _print. The _print function of libstd calls print_to, which is rather complicated because it supports different Stdout devices. We don’t need that complexity since we just want to print to the VGA buffer.

To print to the VGA buffer, we just copy the println! and print! macros, but modify them to use our own _print function:

```rust
// in src/vga_buffer.rs

#[macro_export]
macro_rules! print {
    ($($arg:tt)*) => ($crate::vga_buffer::_print(format_args!($($arg)*)));
}

#[macro_export]
macro_rules! println {
    () => ($crate::print!("\n"));
    ($($arg:tt)*) => ($crate::print!("{}\n", format_args!($($arg)*)));
}

#[doc(hidden)]
pub fn _print(args: fmt::Arguments) {
    use core::fmt::Write;
    WRITER.lock().write_fmt(args).unwrap();
}
```

One thing that we changed from the original println definition is that we prefixed the invocations of the print! macro with $crate too. This ensures that we don’t need to import the print! macro too if we only want to use println.

Like in the standard library, we add the `#[macro_export]` attribute to both macros to make them available everywhere in our crate. Note that this places the macros in the root namespace of the crate, so importing them via use crate::vga_buffer::println does not work. Instead, we have to do use crate::println.

The _print function locks our static WRITER and calls the write_fmt method on it. This method is from the Write trait, which we need to import. The additional unwrap() at the end panics if printing isn’t successful. But since we always return Ok in write_str, that should not happen.

Since the macros need to be able to call _print from outside of the module, the function needs to be public. However, since we consider this a private implementation detail, we add the doc(hidden) attribute to hide it from the generated documentation.




## hello world using println

Now we can use println in our _start function:

```rust
// in src/main.rs

#[unsafe(no_mangle)]
pub extern "C" fn _start() -> ! {
    println!("Hello World{}", "!");

    loop {}
}
```

Note that we don’t have to import the macro in the main function, because it already lives in the root namespace.

do cargo run to see the output.

## Panic message

Now that we have a println macro, we can use it in our panic function to print the panic message and the location of the panic:

```rust
// in main.rs

/// This function is called on panic.
#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    println!("{}", info);
    loop {}
}
```
When we now insert panic!("Some panic message"); in our _start function, we get the following output:



------------------------------------------------------


```markdown
GPT response and explanation
Got it — you basically pasted a full section from Philipp Oppermann’s *Writing an OS in Rust* tutorial, and you want me to break it down from the perspective of someone **absolutely new** to Rust and low-level programming.
Let’s go step-by-step, simplifying as we go.

---

## **The problem**

We want a **global text writer** (something that can put text on the screen) so that we can use it **from anywhere** in the code, without having to manually create or pass around a `Writer` object.

That’s what this was trying to do:

```rust
pub static WRITER: Writer = Writer {
    column_position: 0,
    color_code: ColorCode::new(Color::Yellow, Color::Black),
    buffer: unsafe { &mut *(0xb8000 as *mut Buffer) },
};
```

But this fails to compile.

---

## **Why the compiler complains**

In Rust:

* `static` means the value must be **created at compile time**, before the program starts running.
* At compile time, Rust’s "const evaluator" can **only run very simple things** — no heap allocations, no complex function calls, no pointer dereferencing.

The errors tell you exactly that:

1. **`ColorCode::new(...)`** — not allowed because normal function calls aren’t allowed inside a `static`. Only `const fn` calls are.
2. **`&mut *(0xb8000 as *mut Buffer)`** — not allowed because:

   * You can’t dereference a raw pointer in a `static` initializer.
   * Mutable references in `static` must be constant, immutable values.
   * The compiler wants to make sure no weird runtime behavior happens before `main` starts.

Bottom line:
Rust’s compile-time evaluator doesn’t yet know how to do these pointer tricks or call these functions — so we need a different approach.

---

## **The lazy\_static solution**

`lazy_static` is a crate that solves this problem.

Instead of:

* Computing the value at compile time

it does:

* Compute the value **only once, the first time you use it**, at runtime.
* This means we can use **any code we want** (unsafe code, pointer derefs, normal functions) to initialize it.

Example:

```rust
lazy_static! {
    pub static ref WRITER: Writer = Writer {
        column_position: 0,
        color_code: ColorCode::new(Color::Yellow, Color::Black),
        buffer: unsafe { &mut *(0xb8000 as *mut Buffer) },
    };
}
```

Here:

* `pub static ref` → declares a global reference, but not a real `static`.
* It’s safe because the macro guarantees it’s **initialized only once**.

---

## **But… it’s immutable**

* The above `WRITER` can’t be changed, because the global reference is immutable.
* And your `write_str` method requires `&mut self`.
* We could use `static mut` to make it mutable, but that’s **unsafe and dangerous** in Rust — data races could happen.

---

## **Spinlock fix**

In multithreaded or concurrent code, if multiple parts of your program try to use `WRITER` at the same time, bad things can happen.
Normal Rust solves this with `Mutex` from the standard library — but our OS kernel has no threads or blocking system calls.

Solution: **spinlocks**.

* A spinlock is a simple "lock" that just keeps trying until it gets the resource.
* No sleeping, no waiting — it just loops until free.

Using the `spin` crate:

```rust
use spin::Mutex;

lazy_static! {
    pub static ref WRITER: Mutex<Writer> = Mutex::new(Writer {
        column_position: 0,
        color_code: ColorCode::new(Color::Yellow, Color::Black),
        buffer: unsafe { &mut *(0xb8000 as *mut Buffer) },
    });
}
```

Now:

* `WRITER.lock()` → gives you safe mutable access to the `Writer`.
* Lock is released automatically when you’re done.

---

## **Using it**

```rust
use core::fmt::Write;

WRITER.lock().write_str("Hello again").unwrap();
write!(WRITER.lock(), ", some numbers: {} {}", 42, 1.337).unwrap();
```

---

## **The println! macro**

* Macros are like code templates.
* The standard library’s `println!` macro works for `stdout`, but we want to print to **our VGA WRITER**.
* So we copy `println!` and `print!` from the standard library, but change them to call our own `_print` function that writes to the VGA buffer.

```rust
#[macro_export]
macro_rules! print {
    ($($arg:tt)*) => ($crate::vga_buffer::_print(format_args!($($arg)*)));
}

#[macro_export]
macro_rules! println {
    () => ($crate::print!("\n"));
    ($($arg:tt)*) => ($crate::print!("{}\n", format_args!($($arg)*)));
}
```

* `$crate` → makes sure the macro works anywhere in our crate.
* `format_args!` → turns your arguments into a `fmt::Arguments` object.
* `_print` → actually locks `WRITER` and calls `write_fmt` on it.

---

## **Safety**

* Only one `unsafe` block: the pointer to `0xb8000`.
* After that, everything is safe — Rust’s type system and bounds checking prevent memory corruption.

---

### **Summary of the flow**

1. You call `println!("Hello")`.
2. The macro expands to `print!` with your text.
3. `print!` calls `_print(format_args!(...))`.
4. `_print` → `WRITER.lock().write_fmt(...)`.
5. `write_fmt` → calls `write_str` repeatedly on the `Writer`.
6. `Writer` updates the VGA text buffer at memory address `0xb8000`.

---

If you want, I can now draw you a **visual diagram** showing the exact flow from `println!` down to the pixels on the screen in VGA memory — it’ll make all of this click instantly.
Do you want me to do that?




# Testing

This post explores unit and integration testing in no_std executables. We will use Rust’s support for custom test frameworks to execute test functions inside our kernel. To report the results out of QEMU, we will use different features of QEMU and the bootimage tool.

## Testing in rust


Rust has a builtin test frameowk that is capable of runnin unit tests without the need to set anyhting up. Just create a function that checsk some results through assertions and add the `#[test]` attribute to the function header. The cargo test will automatically find and execute all teh test functions of your crate

Unfortunately it is bit more complicated for no_std applications such as our kernel. The problem is that rust test framework implicitly uses teh built in test library. which depends on standard library. This means that we cant use default test framework for our `#[no_std]` kernel


## Custom test frameworks


Rust’s unstable `custom_test_frameworks` feature allows replacing the default test system, even in `#[no_std]` environments. It collects all functions marked with `#[test_case]` and passes them to a user-defined `test_runner`, giving full control over test execution. However, advanced features like `#[should_panic]` are not built-in, so they must be implemented manually—ideal for our special kernel environment where default mechanisms (e.g., stack unwinding) don’t work.

Example minimal runner in `main.rs`:

```rust
#![feature(custom_test_frameworks)]
#![test_runner(crate::test_runner)]

#[cfg(test)]
pub fn test_runner(tests: &[&dyn Fn()]) {
    println!("Running {} tests", tests.len());
    for test in tests { test(); }
}
```

The runner is compiled only in test mode. By default, `cargo test` ignores it because our kernel uses `#[no_main]` and a custom `_start`. We fix this by renaming the generated test harness via `#![reexport_test_harness_main = "test_main"]` and calling it from `_start`:

```rust
#[no_mangle]
pub extern "C" fn _start() -> ! {
    println!("Hello World!");
    #[cfg(test)] test_main();
    loop {}
}
```

Now `cargo test` runs and prints our custom output. For example:

```rust
#[test_case]
fn trivial_assertion() {
    print!("trivial assertion... ");
    assert_eq!(1, 1);
    println!("[ok]");
}
```

This produces:

```
Hello World!
Running 1 tests
trivial assertion... [ok]
```

The tests run, then return to `_start`, which loops indefinitely—something we’ll need to address to let `cargo test` exit automatically.

 

## Exiting QEMU
