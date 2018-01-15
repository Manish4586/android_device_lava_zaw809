#!/bin/bash

cd ../.. 
cd packages/apps/Settings 
patch -p1 < ../../../device/Lava/IrisX8/patches/dev_info.patch 

echo You Did It! Manish_4586!
