#!/bin/bash

./configure \
	--enable-shared \
	--prefix=$(pwd)/android/armv7 \
	--disable-programs \
	--disable-doc  \
	--arch=arm7 \
	--target-os=android \
	--enable-cross-compile \
	--cross-prefix=/home/anushruth/tools/android-ndk-r10d/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi- \
	--sysroot=/home/anushruth/tools/android-ndk-r10d/platforms/android-9/arch-arm \
	--extra-version="freedom" \
	--extra-cflags="-mfpu=neon" \
	--disable-debug 
make clean
make -j4
make install
