#!/usr/bin/env bash

install_packages meson ninja cmake gcc clang llvm gdb valgrind ccache
install_packages rustup
rustup default stable
rustup component add rust-analyzer
install_packages uv python
install_packages go
install_packages jdk-openjdk jdk25-openjdk jdk21-openjdk maven gradle

curl -fsSL https://vite.plus | bash
curl -fsSL https://bun.sh/install | bash
