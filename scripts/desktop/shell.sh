#!/usr/bin/env bash

# Shell & prompt
install_packages fish starship

# Command replacements
install_packages zoxide eza

# Utilities
install_packages btop tmux fastfetch
install_packages git git-delta
install_packages fzf fd ripgrep
install_packages zip unzip
install_packages wiremix
install_packages chezmoi
install_packages jq less wl-clipboard


sudo chsh -s /usr/bin/fish $USER
