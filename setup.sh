#!/bin/sh

dpkg --add-architecture i386 && apt update && apt install git gnupg flex bison gperf build-essential zip bzr curl libc6-dev libncurses5-dev:i386 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 libgl1-mesa-dev g++-multilib mingw-w64-i686-dev tofrodos python3-markdown libxml2-utils xsltproc zlib1g-dev:i386 schedtool liblz4-tool bc lzop imagemagick libncurses5 rsync python2

ln -s /usr/bin/python2 /usr/bin/python

curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo && chmod a+x /usr/bin/repo

mkdir -p /opt/halium/9.0/ && cd /opt/halium/9.0/ && repo init -u https://github.com/droidian-bionic/android -b halium-9.0 --depth=1 && repo sync -c --force-sync --force-remove-dirty
mkdir -p /opt/halium/10.0/ && cd /opt/halium/10.0/ && repo init -u https://github.com/droidian-bionic/android -b halium-10.0 --depth=1 && repo sync -c --force-sync --force-remove-dirty
mkdir -p /opt/halium/11.0/ && cd /opt/halium/11.0/ && repo init -u https://github.com/droidian-bionic/android -b halium-11.0 --depth=1 && repo sync -c --force-sync --force-remove-dirty
mkdir -p /opt/halium/12.0/ && cd /opt/halium/12.0/ && repo init -u https://github.com/droidian-bionic/android -b halium-12.0 --depth=1 && repo sync -c --force-sync --force-remove-dirty
mkdir -p /opt/halium/13.0/ && cd /opt/halium/13.0/ && repo init -u https://github.com/droidian-bionic/android -b halium-13.0 --depth=1 && repo sync -c --force-sync --force-remove-dirty
