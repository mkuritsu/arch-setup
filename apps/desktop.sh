#!/usr/bin/env bash

install_packages ghostty
install_packages nautilus papers loupe file-roller
install_packages mpv
install_packages keyd

install_aur_packages helium-browser-bin
install_aur_packages opentabletdriver
install_aur_packages vicinae-bin

systemctl enable --user --now opentabletdriver

sudo systemctl enable keyd
