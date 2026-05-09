#!/usr/bin/env bash

if command -v paru >/dev/null 2>&1; then
    echo "Paru already installed, skipping."
else
    install_packages rustup gcc

    rustup default stable
    rustup component add rust-analyzer

    install_dir=$(mktemp -d)
    git clone https://aur.archlinux.org/paru.git "$install_dir"
    makepkg -si --noconfirm --needed -D "$install_dir"
fi
