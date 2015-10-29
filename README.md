# dockerfile-gecko-armhf-cross
A dockerfile for Gecko Linux armhf cross build environment

## How to build Gecko for Linux armhf
1. docker run
2. cd /mozilla
3. hg clone http://hg.mozilla.org/mozilla-central/
4. cd mozilla-central
5. copy the following to /mozilla/.mozconfig

 ```
CROSS_COMPILE=1
CC=arm-linux-gnueabihf-gcc
CXX=arm-linux-gnueabihf-g++
export PKG_CONFIG_PATH=/usr/lib/arm-linux-gnueabihf/pkgconfig

ac_add_options --prefix=/usr/lib/arm-linux-gnueabihf
ac_add_options --target=arm-linux-gnueabihf
ac_add_options --enable-application=browser

# If using opt build
# ac_add_options --enable-optimize
# If using debug build
# ac_add_options --enable-debug
 ```

6. ./mach mercurial-setup
7. ./mach build
8. ./mach package

## Built binaries
See /mozilla/mozilla-central/obj-arm-linux-gnueabihf/dist
