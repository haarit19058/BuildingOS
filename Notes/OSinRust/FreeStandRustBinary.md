https://os.phil-opp.com/freestanding-rust-binary/


The first step in creating our own operating system kernel is to create a Rust executable that does not link the standard library.

This makes it possible to run Rust code on the bare metal without an underlying operating system.

# Intro
To write an operating system kernel, we need code that does not depend on any operating system features. This means that we can’t use threads, files, heap memory, the network, random numbers, standard output, or any other features requiring OS abstractions or specific hardware. Which makes sense, since we’re trying to write our own OS and our own drivers.

This means that we can’t use most of the Rust standard library, but there are a lot of Rust features that we can use. For example, we can use iterators, closures, pattern matching, option and result, string formatting, and of course the ownership system. These features make it possible to write a kernel in a very expressive, high level way without worrying about undefined behavior or memory safety.


