#!/bin/bash -e

# build statically linked binary with Rust
cargo build --features all --release
cargo install --features all --root "$PREFIX"
