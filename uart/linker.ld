/* linker.ld - Raspberry Pi 5 bare-metal kernel */

ENTRY(_start)

SECTIONS {
    /* Firmware loads kernel8.img at 0x80000 */
    . = 0x80000;

    /* Code section */
    .text : {
        KEEP(*(.text.boot))
        *(.text .text.*)
    }

    /* Read-only data */
    .rodata : {
        *(.rodata .rodata.*)
    }

    /* Writable data */
    .data : {
        *(.data .data.*)
    }

    /* Zero-initialized data (BSS) */
    .bss (NOLOAD) : ALIGN(16) {
        __bss_start = .;
        *(.bss .bss.* COMMON)
        __bss_end = .;
    }

    /* Simple stack allocation (8 KiB) */
    . = ALIGN(16);
    __stack_bottom = .;
    . += 8K;
    __stack_top = .;

    /* End of image */
    _end = .;
}
