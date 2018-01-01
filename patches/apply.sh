#!/bin/bash

patch -p1 < ../../device/Lava/IrisX8/patches/frameworks_av.patch

cd ../..
cd apps/Settings
patch -p1 -b < ../../../device/Lava/IrisX8/patches/dev_info.patch

echo You Did It! Manish_4586!
