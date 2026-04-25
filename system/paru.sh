#!/usr/bin/env bash

if command -v paru >/dev/null 2>&1; then
    echo "Paru already installed, skipping."
else
    install_packages rustup gcc

    rustup default stable
    rustup component add rust-analyzer

    rm -rf /tmp/paru-clone
    git clone https://aur.archlinux.org/paru.git /tmp/paru-clone
    makepkg -si --noconfirm --needed -D /tmp/paru-clone
    rm -rf /tmp/paru-clone
fi
