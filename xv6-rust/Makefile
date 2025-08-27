# Target triple and build dir
TARGET = aarch64-unknown-none
MODE   = release
ELF    = target/$(TARGET)/$(MODE)/xv6-rust
IMG    = kernel8.img

# Tools
CARGO       = cargo
OBJCOPY     = rust-objcopy
QEMU        = qemu-system-aarch64

# Default build target
all: $(IMG)

# Build ELF with cargo
$(ELF):
	$(CARGO) build -Zbuild-std=core,compiler_builtins --target $(TARGET) --$(MODE)

# Convert ELF to raw kernel8.img
$(IMG): $(ELF)
	$(OBJCOPY) --strip-all -O binary $(ELF) $(IMG)

# Run in QEMU (Pi 3 model, 64-bit)
qemu: $(IMG)
	$(QEMU) -M raspi3b -nographic -serial mon:stdio -kernel $(IMG)

# Clean build artifacts
clean:
	$(CARGO) clean
	rm -f $(IMG)
