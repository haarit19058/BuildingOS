ENTRY(_start)

SECTIONS
{
  . = 0x80000;   /* Raspberry Pi boot address */

  .text : {
    *(.text._start*)
    *(.text*)
  }

  .rodata : { *(.rodata*) }
  .data   : { *(.data*) }
  .bss    : { *(.bss*) *(COMMON) }
}
