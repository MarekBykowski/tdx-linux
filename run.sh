#!/bin/bash
if fakeroot make O=../kernel_build_no_deb -j$(nproc) LOCALVERSION=-tdx-no-deb; then
echo marian12 | sudo -S make O=../kernel_build_no_deb modules_install
echo marian12 | sudo -S make O=../kernel_build_no_deb install
fi
