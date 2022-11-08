#!/bin/sh
cd testing
#cargo +nightly build -Z build-std=std,panic_abort -Z build-std-features=panic_immediate_abort --target x86_64-unknown-linux-musl --release
cross +nightly build --target mips-unknown-linux-musl --release
cross +nightly build -Z build-std=std,panic_abort -Z build-std-features=panic_immediate_abort --target mips-unknown-linux-musl --release
