#!/usr/bin/env bash

install_packages rustup gcc

rustup default stable
rustup component add rust-analyzer

if command -v paru >/dev/null 2>&1; then
    rm -rf /tmp/paru-clone
    git clone https://aur.archlinux.org/paru.git /tmp/paru-clone
    makepkg -si --noconfirm --needed -D /tmp/paru-clone
    rm -rf /tmp/paru-clone
else
  echo "Paru already installed, skipping."
fi
