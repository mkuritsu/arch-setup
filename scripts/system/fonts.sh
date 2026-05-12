#!/usr/bin/env bash

NOTO_FONTS=$(pacman -Sqs noto-fonts | tr '\n' ' ')

install_packages ttf-jetbrains-mono-nerd $NOTO_FONTS