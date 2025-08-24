/* SPDX-License-Identifier: MIT OR Apache-2.0
 *
 * Copyright (c) 2018-2022 Andre Richter <andre.o.richter@gmail.com>
 */

/* The physical address at which the the kernel binary will be loaded by the Raspberry's firmware */
__rpi_phys_binary_load_addr = 0x80000;



/* tells the linker the program entry point */
ENTRY(__rpi_phys_binary_load_addr)

/* Flags:
 *     4 == R
 *     5 == RX
 *     6 == RW
 */
PHDRS
{
    /* Defines the program headers for elf
        segment_code is a loadable segment PT_LOAD
     */
    segment_code PT_LOAD FLAGS(5);
}

SECTIONS
{
    . =  __rpi_phys_binary_load_addr;

    /***********************************************************************************************
    * Code
    Defines the .text section and assigns it to the segment_code PHDR (so it gets RX permissions).

    KEEP() ensures the linker does not throw away _start, even with link-time optimization (LTO) or dead-code elimination.

    *(.text._start) grabs anything put in the .text._start section (your reset handler / entry function).

    your _start symbol (defined in Rust or ASM) is guaranteed to be placed at 0x80000 and marked executable.
    ***********************************************************************************************/
    .text :
    {
        KEEP(*(.text._start))
    } :segment_code
}
