#!/bin/bash
export KBUILD_OUTPUT=/home/mbykowsx/linux/kernel_build_no_deb
if fakeroot make -j$(nproc) LOCALVERSION=-tdx-no-deb; then
echo marian12 | sudo -S make modules_install
echo marian12 | sudo -S make install
fi
