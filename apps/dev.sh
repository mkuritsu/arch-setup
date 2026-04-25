#!/usr/bin/env bash

install_packages meson ninja cmake gcc clang llvm gdb valgrind
install_packages rustup
rustup default stable
rustup component add rust-analyzer
install_packages uv
install_packages go

curl -fsSL https://vite.plus | bash
curl -fsSL https://bun.sh/install | bash
