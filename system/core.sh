#!/usr/bin/env bash

install_packages linux-headers base-devel man-db man-pages

gpu_info="$(lspci -nn | grep -Ei 'VGA|3D|Display')"
vulkan_pkgs=()

if grep -Eqi 'NVIDIA' <<<"$gpu_info"; then
    vulkan_pkgs+=(nvidia-utils)
fi

if grep -Eqi 'AMD|Advanced Micro Devices|ATI' <<<"$gpu_info"; then
    vulkan_pkgs+=(vulkan-radeon)
fi

if grep -Eqi 'Intel' <<<"$gpu_info"; then
    vulkan_pkgs+=(vulkan-intel)
fi

install_packages "${vulkan_pkgs[@]}"