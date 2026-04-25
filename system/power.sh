#!/usr/bin/env bash

install_packages power-profiles-daemon thermald

sudo systemctl enable --now power-profiles-daemon
sudo systemctl enable --now thermald