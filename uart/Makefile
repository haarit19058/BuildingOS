TARGET = aarch64-unknown-none
MODE   = release
CRATE  = rp5_kernel
ELF    = target/$(TARGET)/$(MODE)/$(CRATE)
IMG    = kernel8.img
CARGO  = cargo

all: $(IMG)

$(ELF):
	cargo build --release --target $(TARGET)

$(IMG): $(ELF)
	$(CARGO) objcopy -- --strip-all -O binary $(IMG)

clean:
	cargo clean
	rm -f $(IMG)
