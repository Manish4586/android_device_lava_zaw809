# AOSP 7.1.2

7.1.2 Iris X8 L

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | MT6592 1.4GHz 32bit
GPU     | Mali-450MP4
Memory  | 2GB RAM - LPDR3
Shipped Android Version | 4.4.2
Update Android Version | 5.1
Kernel  | 3.10.72
Storage | 16GB
DPI     | 320
Display | 5" 1280 x 720 px




# Command To Build :-

reporepo init -u git://github.com/Manish4586/aosp_Ext_Manifest.git -b 7.x

repo sync

git clone https://github.com/Manish4586/Iris-X8-L-Device_3.10.72.git -b aosp device/Lava/IrisX8

git clone https://github.com/Manish4586/Iris-X8-L-Vendor_3.10.72.git vendor/Lava/IrisX8

source build/envsetup.sh

breakfast IrisX8
