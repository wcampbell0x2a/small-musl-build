FROM rust:1.71

RUN rustup toolchain add nightly
RUN rustup component add rust-src --toolchain nightly
RUN rustup target add x86_64-unknown-linux-musl
RUN rustup target add mips-unknown-linux-musl

RUN apt-get update && apt-get -y install musl-tools

RUN mkdir /toolchain && chmod 777 /toolchain && cd toolchain && curl -O https://musl.cc/mips-linux-musl-cross.tgz && tar xzf mips-linux-musl-cross.tgz

ENV CARGO_TARGET_X86_64_UNKNOWN_LINUX_MUSL_LINKER=musl-gcc
ENV CARGO_TARGET_MIPS_UNKNOWN_LINUX_MUSL_LINKER=/toolchain/mips-linux-musl-cross/bin/mips-linux-musl-gcc \
    CC_mips_unknown_linux_musl=/toolchain/mips-linux-musl-cross/bin/mips-linux-musl-gcc
