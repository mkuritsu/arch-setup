#!/usr/bin/env bash

install_packages linux-headers base-devel
install_packages man-db man-pages
install_packages openssh openssl
install_packages git
install_packages fuse2 fuse3
install_packages fwupd

gpu_info="$(lspci -nn | grep -Ei 'VGA|3D|Display')"
graphics_pkgs=()

if grep -Eqi 'NVIDIA' <<<"$gpu_info"; then
    graphics_pkgs+=(nvidia-utils)
fi

if grep -Eqi 'AMD|Advanced Micro Devices|ATI' <<<"$gpu_info"; then
    graphics_pkgs+=(vulkan-radeon)
fi

if grep -Eqi 'Intel' <<<"$gpu_info"; then
    graphics_pkgs+=(vulkan-intel intel-media-driver)
fi

install_packages "${graphics_pkgs[@]}"

sudo systemctl enable --now fwupd

sudo cryptsetup --allow-discards --persistent refresh root
