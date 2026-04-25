#!/usr/bin/env bash

install_packages linux-headers base-devel man-db man-pages git fuse2

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
