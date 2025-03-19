#!/bin/bash -x

# First generate .config, eg with `make tdx_defconfig`, then
if fakeroot make -j$(nproc) LOCALVERSION=-tdx-$(date +%F); then
echo marian12 | sudo -S make modules_install
echo marian12 | sudo -S make install
fi
