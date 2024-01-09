#!/bin/bash

cd "/opt/halium/12.0"
rm -f ./.repo/local_manifests/*

repo sync -c --force-sync --force-remove-dirty
./halium/devices/setup "halium_arm64" --force-sync --force-remove-dirty

# build

rm -rf ./out/

./hybris-patches/apply-patches.sh --mb

export LC_ALL=C
export USE_CCACHE=1
source build/envsetup.sh
lunch "lineage_halium_arm64-userdebug"

time make -j10 e2fsdroid
time make -j10 systemimage

mv out/target/product/halium_arm64/system.img ${WORKSPACE}/system-${BUILD_NUMBER}.img

rm -rf ./out/
