#!/usr/bin/env bash

# Shell & prompt
install_packages fish starship

# Command replacements
install_packages zoxide eza

# Utilities
install_packages btop tmux fastfetch wl-clipboard git git-delta fzf ripgrep less zip unzip fd jq

install_packages chezmoi

sudo chsh -s /usr/bin/fish $USER
