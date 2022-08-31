FROM rust:1.63

RUN rustup toolchain add nightly
RUN rustup component add rust-src --toolchain nightly
RUN rustup target add x86_64-unknown-linux-musl

RUN apt-get update && apt-get -y install musl-tools

ENV CARGO_TARGET_X86_64_UNKNOWN_LINUX_MUSL_LINKER=musl-gcc \
    CC_x86_64_unknown_linux_musl=musl-gcc

