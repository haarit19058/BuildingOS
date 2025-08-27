// ELF magic number: "\x7FELF" in little endian
pub const ELF_MAGIC: u32 = 0x464C457F;

// Values for Program Header type
pub const ELF_PROG_LOAD: u32 = 1;

// Flag bits for Program Header flags
pub const ELF_PROG_FLAG_EXEC: u32 = 1;
pub const ELF_PROG_FLAG_WRITE: u32 = 2;
pub const ELF_PROG_FLAG_READ: u32 = 4;

#[repr(C)]
#[derive(Debug, Clone, Copy)]
pub struct ElfHdr {
    pub magic: u32,        // must equal ELF_MAGIC = 0x464C457F ("\x7FELF")
    pub elf: [u8; 12],     // more identifying info
    pub type_: u16,        // type of file (exec, relocatable, shared lib)
    pub machine: u16,      // target architecture (x86, ARM, etc.)
    pub version: u32,      // ELF version
    pub entry: u32,        // address to start execution (entry point)
    pub phoff: u32,        // offset of program header table
    pub shoff: u32,        // offset of section header table
    pub flags: u32,        // CPU-specific flags
    pub ehsize: u16,       // ELF header size
    pub phentsize: u16,    // size of each program header entry
    pub phnum: u16,        // number of program header entries
    pub shentsize: u16,    // size of each section header entry
    pub shnum: u16,        // number of section header entries
    pub shstrndx: u16,     // index of section header string table
}

#[repr(C)]
#[derive(Debug, Clone, Copy)]
pub struct ProgHdr {
    pub type_: u32,     // what kind of segment (LOAD, DYNAMIC, etc.)
    pub off: u32,       // file offset where segment starts
    pub vaddr: u32,     // virtual address in memory
    pub paddr: u32,     // physical address (unused in xv6)
    pub filesz: u32,    // size of data in file
    pub memsz: u32,     // size in memory (bigger than filesz → bss)
    pub flags: u32,     // permissions (R/W/X)
    pub align: u32,     // alignment (page aligned)
}
