#!/bin/bash
mkdir -p releases
now=$(date +"%Y%m%d_%H%M")
cp -f arch/arm/boot/zImage AnyKernel/kernel/
cp -f drivers/net/wireless/libra/librasdioif.ko AnyKernel/system/lib/modules/
cp -f drivers/net/wireless/bcm4329/wireless.ko AnyKernel/system/lib/modules/
cp -f drivers/net/tun.ko AnyKernel/system/lib/modules/
cp -f fs/cifs/cifs.ko AnyKernel/system/lib/modules/
cd AnyKernel
zip -r ./../RM 32 PECAN-${now}.zip *
cd ..
mv RM 32 PECAN-${now}.zip releases/

