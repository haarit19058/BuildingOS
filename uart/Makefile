# Target triple and build dir
TARGET = aarch64-unknown-none
MODE   = release
ELF    = target/$(TARGET)/$(MODE)/uart-demo
IMG    = kernel8.img

# Tools
CARGO = cargo
QEMU  = qemu-system-aarch64

# Default build target
all: $(IMG)

# Build ELF with cargo
$(ELF):
	$(CARGO) build -Z build-std=core,compiler_builtins --target $(TARGET) --$(MODE)

# Convert ELF to raw kernel8.img using cargo objcopy
# cargo objcopy will pick the correct built artifact for the target/mode,
# so we don't pass the ELF path here; we only ask objcopy to emit a binary.
$(IMG): $(ELF)
	$(CARGO) objcopy --$(MODE) -- -O binary $(IMG)

# Run in QEMU (Pi 3 model, 64-bit)
qemu: $(IMG)
	$(QEMU) -M raspi3b -nographic -serial mon:stdio -kernel $(IMG)

# Clean build artifacts
clean:
	$(CARGO) clean
	rm -f $(IMG)

.PHONY: all qemu clean
