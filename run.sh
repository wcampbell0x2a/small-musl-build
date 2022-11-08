#!/bin/sh
cd testing
cargo +nightly build -Z build-std=std,panic_abort -Z build-std-features=panic_immediate_abort --target mips-unknown-linux-musl --release
cd ..
cd backhand
cargo +nightly build -Z build-std=std,panic_abort -Z build-std-features=panic_immediate_abort --target mips-unknown-linux-musl --release
