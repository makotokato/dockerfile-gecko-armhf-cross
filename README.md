# dockerfile-gecko-armhf-cross
A dockerfile for Gecko Linux armhf cross build environment

## How to build Gecko for Linux armhf
1. docker run
2. cd /mozilla
3. hg clone http://hg.mozilla.org/mozilla-central/
4. cd mozilla-central
5. cp /mozilla/mozconfig.sameple /mozilla/.mozconfig
6. ./mach mercurial-setup
7. ./mach build
8. ./mach package (optional)

## Built binaries
See /mozilla/mozilla-central/obj-arm-linux-gnueabihf/dist

## FAQ

### No space left on device
The default image size of docker container is 10GB.  It may not be enough.
To expand to 20GB, use --storage-opt dm.basesize=20G when lanuching docker
daemon.
