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

  
  /* inside memory.ld */
  _sheap = .;
  . = ORIGIN(RAM) + 0x100000; /* example offset; set appropriately */
  _eheap = . + 0x800000; /* example size 8MiB */

}
