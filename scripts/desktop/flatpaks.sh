#!/usr/bin/env bash

install_packages flatpak

install_flatpaks com.spotify.Client
install_flatpaks com.discordapp.Discord

# Enable Discord IPC socket
mkdir -p ~/.config/user-tmpfiles.d
echo 'L %t/discord-ipc-0 - - - - app/com.discordapp.Discord/discord-ipc-0' > ~/.config/user-tmpfiles.d/discord-rpc.conf
systemctl --user enable --now systemd-tmpfiles-setup.service
