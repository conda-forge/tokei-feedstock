#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

# build statically linked binary with Rust
cargo build --features all --release
cargo install --features all --root "$PREFIX"
