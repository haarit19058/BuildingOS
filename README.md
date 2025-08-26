.
├── Cargo.toml
├── build.rs
├── Makefile
├── src
│   ├── main.rs                  # _start, early init, then call kernel::init()
│   ├── memory.ld                # linker script
│   ├── arch/                    # arch-specific (AArch64)
│   │   ├── aarch64/
│   │   │   ├── mod.rs
│   │   │   ├── cpu.rs           # EL, barriers, wfi, interrupts enable/disable
│   │   │   ├── exception.rs     # vector table + trap handler + syscall entry
│   │   │   ├── context.rs       # saved registers, ctx switch asm
│   │   │   ├── timer.rs         # system timer/IRQ
│   │   │   └── mmu.rs           # page table ops, TCR/TTBR/MAIR setup (arch side)
│   ├── kernel/
│   │   ├── mod.rs
│   │   ├── syscall/             # "sysproc.c" equivalent + syscall table
│   │   │   ├── mod.rs
│   │   │   ├── numbers.rs       # syscall numbers/ids
│   │   │   └── dispatch.rs      # table of fn ptrs, trampoline
│   │   ├── proc/                # "proc.c" equivalent
│   │   │   ├── mod.rs
│   │   │   ├── process.rs       # Process struct, states, pid, kstack, asid
│   │   │   ├── scheduler.rs     # RR/Lottery etc.
│   │   │   └── context_switch.rs# arch-agnostic wrapper calling arch::context
│   │   ├── vm/                  # "mmu.c" equivalent (arch-neutral API)
│   │   │   ├── mod.rs
│   │   │   ├── addr.rs          # newtypes: PhysAddr/VirtAddr/Page*
│   │   │   ├── mapper.rs        # map/unmap, allocate page tables
│   │   │   └── space.rs         # AddressSpace abstraction per process
│   │   └── sync.rs              # spinlocks, once cells, irq-safe locks
│   ├── drivers/
│   │   ├── mod.rs
│   │   └── uart_pl011.rs        # your UART code lives here (or keep `uart/`)
│   ├── uart/                    # (if you want to keep as-is)
│   │   └── mod.rs
│   └── usr/                     # userspace stubs/binaries (later)
└── structure.txt
