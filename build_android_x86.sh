#!/bin/bash

./configure \
	--enable-shared \
	--prefix=$(pwd)/../android/x86 \
	--disable-programs \
	--disable-doc  \
	--arch=x86 \
	--cpu=atom \
	--target-os=android \
	--enable-cross-compile \
	--cross-prefix=/home/anushruth/tools/android-ndk-r10d/toolchains/x86-4.9/prebuilt/linux-x86_64/bin/i686-linux-android- \
	--sysroot=/home/anushruth/tools/android-ndk-r10d/platforms/android-9/arch-x86 \
	--extra-version="freedom" \
	--disable-debug 
make clean
make -j4
make install
./build_android_arm.sh
