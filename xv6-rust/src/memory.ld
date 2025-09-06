MEMORY
{
    RAM (rwx) : ORIGIN = 0x80000, LENGTH = 0x3F800000   /* ~1GB RAM minus GPU space */
}

SECTIONS
{
    . = ORIGIN(RAM);

    .text : ALIGN(4) {
        *(.text*)
    } > RAM

    .rodata : ALIGN(4) {
        *(.rodata*)
    } > RAM

    .data : ALIGN(4) {
        *(.data*)
    } > RAM

    .bss : ALIGN(4) {
        *(.bss*)
        *(COMMON)
    } > RAM
}
