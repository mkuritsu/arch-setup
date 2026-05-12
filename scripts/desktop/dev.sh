#!/usr/bin/env bash

install_packages meson ninja cmake gcc gdb clang llvm valgrind ccache
install_packages uv python
install_packages go
install_packages jdk-openjdk jdk25-openjdk jdk21-openjdk maven gradle
install_packages bun pnpm
install_packages just

install_packages rustup
rustup default stable
rustup component add rust-analyzer

# curl -fsSL https://vite.plus | bash
