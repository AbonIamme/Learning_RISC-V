#!/bin/bash
# RISC-V toolchain setup for Ubuntu/Debian
wget https://static.dev.sifive.com/dev-tools/riscv64-unknown-elf-gcc-10.2.0-2020.12.8-x86_64-linux-ubuntu14.tar.gz
tar -xzf riscv64-unknown-elf-gcc-*.tar.gz
echo 'export PATH=$PATH:$(pwd)/riscv64-unknown-elf-gcc-*/bin' >> ~/.bashrc
