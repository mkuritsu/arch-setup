#!/usr/bin/env bash

sudo pacman -S --noconfirm --needed git
mkdir -p $HOME/.local/share
git clone https://github.com/mkuritsu/arch-setup.git $HOME/.local/share/setup-script

source $HOME/.local/share/setup-script/install.sh