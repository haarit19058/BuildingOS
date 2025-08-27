fn main() {
    println!("cargo:rustc-link-arg=-Tsrc/memory.ld");
    println!("cargo:rustc-link-arg=--gc-sections");
}
