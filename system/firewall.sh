#!/usr/bin/env bash

install_packages ufw

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

sudo systemctl enable --now ufw