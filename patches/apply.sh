#!/bin/bash
cd packages/apps/Settings
patch -p1 -b < ../../../device/Lava/IrisX8/patches/dev_info.patch
cd ../..

