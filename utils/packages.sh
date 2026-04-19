#!/usr/bin/env bash

install_packages() {
    sudo pacman --noconfirm --needed -S $@
}

install_aur_packages() {
    paru --noconfirm --needed -S $@
}

install_flatpaks() {
    flatpak install flathub -y $@
}