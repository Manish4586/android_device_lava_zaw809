#!/bin/bash
cd ../../../..
cd packages/apps/Settings
patch -p1 -b < ../../../device/Lava/IrisX8/patches/dev_info.patch
git clean -f -d
cd ../../..
cd system/core
patch -p1 < ../../device/Lava/IrisX8/patches/system_core.patch
cd ..
cd netd
patch -p1 < ../../device/Lava/IrisX8/patches/system_netd.patch
cd ../..
cd packages/apps/Settings
patch -p1 < ../../../device/Lava/IrisX8/patches/packages_apps_Settings.patch
cd ..
cd Camera2
patch -p1 < ../../../device/Lava/IrisX8/patches/packages_apps_Camera2.patch
cd ../..
cd services/Telephony
patch -p1 < ../../../device/Lava/IrisX8/patches/packages_services_Telephony.patch
cd ../../..
cd external/openssl
patch -p1 < ../../device/Lava/IrisX8/patches/external_openssl.patch
cd ..
cd skia
patch -p1 < ../../device/Lava/IrisX8/patches/external_skia.patch
cd ../..
cd frameworks/base
git apply -v < ../../device/Lava/IrisX8/patches/frameworks_base.patch
cd ..
cd native
patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_native.patch
cd ..
cd opt/telephony
patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_opt_telephony.patch
cd ../../..
echo Patches Applied Successfully! 

cd external/tinycompress
git apply -v ../../device/Lava/IrisX8/patches/external_tinycompress.patch
cd ../..
cd frameworks/av
git apply -v ../../device/Lava/IrisX8/patches/frameworks_av.patch
cd ../..
cd frameworks/base
git apply -v ../../device/Lava/IrisX8/patches/frameworks_base.patch
cd ../..
cd frameworks/opt/telephony
git apply -v ../../../device/Lava/IrisX8/patches/frameworks_opt_telephony.patch
cd ../../..
cd hardware/libhardware
git apply -v ../../device/Lava/IrisX8/patches/hardware_libhardware.patch
cd ../..
cd packages/services/Telecomm
git apply -v ../../../device/Lava/IrisX8/patches/services_Telecomm.patch
cd ../../..
cd packages/services/Telephony
git apply -v ../../../device/Lava/IrisX8/patches/services_Telephony.patch
cd ../../..
cd system/core
git apply -v ../../device/Lava/IrisX8/patches/system_core.patch
cd ../..
cd system/netd
git apply -v ../../device/Lava/IrisX8/patches/system_netd.patch
cd ../..
echo Patches Applied Successfully!
