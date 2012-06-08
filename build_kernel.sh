#!/bin/bash
#based on script found at https://github.com/alanorth/kernel_huawei_u8160/blob/cm7/build-kernel.sh

function setenv {
	echo -n "Setting ARM environment..."
	export ARCH=arm
	export USE_CCACHE=1

	#THIS LINE SHOULD REFLECT YOUR PATH TO THE TOOLCHAIN!
	export CROSS_COMPILE="/home/pax0r/Linaro/android-toolchain-eabi/bin/arm-eabi-"
	#export CFLAGS="-Ofast -mtune=arm1136jf-s -march=armv6j -floop-interchange -floop-strip-mine -fomit-frame-pointer -floop-block -mfpu=vfp -pipe"
	echo " done."

	echo -n "Setting other environment variables..."
	# the number of CPUs to use when compiling the kernel (auto detect all available)
	export CPUS=`grep -c processor /proc/cpuinfo`
	echo " done."
}

setenv
schedtool -B -n19 -e make -j${CPUS} 

 
