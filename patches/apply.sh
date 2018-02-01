#!/bin/bash

 cd ../../../..
 cd packages/apps/Settings
 patch -p1 -b < ../../../device/Lava/IrisX8/patches/dev_info.patch
 git clean -f -d
 cd ../../..
 cd system/core
 patch -p1 < ../../device/Lava/IrisX8/patches/system_core.patch
 cd ..
 cd bt
 patch -p1 < ../../device/Lava/IrisX8/patches/system_bt.patch
 cd ..
 cd netd
 patch -p1 < ../../device/Lava/IrisX8/patches/system_netd.patch
 cd ..
 cd sepolicy
 patch -p1 < ../../device/Lava/IrisX8/patches/system_sepolicy.patch
 cd ..
 cd vold
 patch -p1 < ../../device/Lava/IrisX8/patches/system_vold.patch
 cd ../..
 cd frameworks/av
 patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_av.patch
 patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_av_2.patch
 cd ..
 cd base
 patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_base.patch
 cd ..
 cd native
 patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_native.patch
 cd ..
 cd opt/telephony
 patch -p1 < ../../../device/Lava/IrisX8/patches/frameworks_opt_telephony.patch
 cd ../../..
 cd external/icu
 patch -p1 < ../../device/Lava/IrisX8/patches/external_icu.patch
 cd ..
 cd wpa_supplicant_8
 patch -p1 < ../../device/Lava/IrisX8/patches/wpa_supplicant_8.patch
 cd ../..
 cd packages/apps/FMRadio
 patch -p1 < ../../../device/Lava/IrisX8/patches/packages_apps_FMRadio.patch
 cd ../../..
# cd vendor/codeaurora/telephony
# patch -p1 -p1 < ../../../device/Lava/IrisX8/patches/vendor_codeaurora_telephony.patch
# cd ../../..
 cd packages/services/Telephony
 patch -p1 -p1 < ../../../device/Lava/IrisX8/patches/packages_services_Telephony.patch
 echo Cleaning Directory For Building
 cd ../../..
 echo Successfuly patched! Go ahead and start building! @ Manish_4586
