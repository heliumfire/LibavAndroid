#!/bin/bash

./configure \
	--enable-shared \
	--prefix=$(pwd)/android/mips \
	--disable-programs \
	--disable-doc  \
	--arch=mips \
	--target-os=android \
	--enable-cross-compile \
	--cross-prefix=/home/anushruth/tools/android-ndk-r10d/toolchains/mipsel-linux-android-4.9/prebuilt/linux-x86_64/bin/mipsel-linux-android- \
	--sysroot=/home/anushruth/tools/android-ndk-r10d/platforms/android-9/arch-mips \
	--extra-version="freedom" \
	--disable-debug 
make clean
make -j4
make install
./build_android_arm.sh
