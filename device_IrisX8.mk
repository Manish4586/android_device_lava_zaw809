$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/Lava/IrisX8/IrisX8-vendor.mk)

PRODUCT_CHARACTERISTICS := default

PRODUCT_PROPERTY_OVERRIDES += ro.product.locale=en-IN

LOCAL_PATH := device/Lava/IrisX8

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# PERMISSIONS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    $(LOCAL_PATH)/rootdir/system/etc/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    $(LOCAL_PATH)/rootdir/system/etc/permissions/platform.xml:system/etc/permissions/platform.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# AGPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml 

# Telecom
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(LOCAL_PATH)/rootdir/system/etc/ecc_list.xml:system/etc/ecc_list.xml \
    $(LOCAL_PATH)/rootdir/system/etc/spn-conf.xml:system/etc/spn-conf.xml
    
# Audio	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/rootdir/system/etc/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg \
    $(LOCAL_PATH)/rootdir/system/etc/audio_device.xml:system/etc/audio_device.xml \
    $(LOCAL_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/rootdir/system/etc/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/rootdir/system/etc/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml

# Thermal
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/rootdir/system/etc/tp/thermal.conf:system/etc/.tp/thermal.conf \
     $(LOCAL_PATH)/rootdir/system/etc/tp/thermal.off.conf:system/etc/.tp/thermal.off.conf
	
# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \


# RAMDISK
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/root/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/rootdir/root/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.mt6592:root/fstab.mt6592 \
    $(LOCAL_PATH)/rootdir/root/init.recovery.mt6592.rc:root/init.recovery.mt6592.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6592.rc:root/init.mt6592.rc \
    $(LOCAL_PATH)/rootdir/root/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/root/init.ssd.rc:root/init.ssd.rc \
    $(LOCAL_PATH)/rootdir/root/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/root/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/root/ueventd.mt6592.rc:root/ueventd.mt6592.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6592.usb.rc:root/init.mt6592.usb.rc \
    $(LOCAL_PATH)/rootdir/root/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/rootdir/root/init.nvdata.rc:root/init.nvdata.rc \
    $(LOCAL_PATH)/rootdir/root/init.mt6592.power.rc:root/init.mt6592.power.rc \
    $(LOCAL_PATH)/rootdir/root/init.aee.rc:root/init.aee.rc \
    $(LOCAL_PATH)/rootdir/root/init.xlog.rc:root/init.xlog.rc \
    $(LOCAL_PATH)/rootdir/root/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/root/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/rootdir/root/meta_init.project.rc:root/meta_init.project.rc


DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Charger
PRODUCT_PACKAGES += \
      	charger_res_images

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_PACKAGES += \
    libxlog
    
# Audio
PRODUCT_PACKAGES += \
    	audio.a2dp.default \
    	audio_policy.default \
    	audio_policy.stub \
    	audio.r_submix.default \
    	audio.usb.default \
    	libaudio-resampler \
    	tinymix \
    	libtinyalsa \
    	libtinycompress \
    	librs_jni \
		libtinyxml

PRODUCT_PACKAGES += \
	   	libgralloc_extra

# Bluetooth
PRODUCT_PACKAGES += \
	    libbt-vendor \
    
# Wifi
PRODUCT_PACKAGES += \
		libwpa_client \
		hostapd \
		dhcpcd.conf \
		hostapd_cli \
		wpa_supplicant \
		wpa_supplicant.conf \
		lib_driver_cmd_mt66xx \
		libwifi-hal-mt66xx \
		wifi_hal \
		libnl_2

# Wifi
PRODUCT_PACKAGES += \
    	lib_driver_cmd_mt66xx \
    	libwifi-hal-mt66xx \
    	wifi_hal \
    	libnl_2

PRODUCT_PACKAGES += \
	    libion \

# FM Radio
PRODUCT_PACKAGES += \
     	FmRadio \
     	libfmjni \
		libfmmt6620 \
        libfmmt6628 \
        libfmmt6627 \
        libfmmt6630 \
        libfmcust 

# MTK's Engineer Mode
PRODUCT_PACKAGES += \
        EngineerMode

# Other Apps
PRODUCT_PACKAGES += \
	    Torch \
		YGPS

# Media	
PRODUCT_COPY_FILES += \
    	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \

PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.zygote=zygote32 \
    persist.sys.usb.config=mtp
    
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    persist.service.acm.enable=0 \
    ro.oem_unlock_supported=1 \
    ro.crypto.state=unencrypted

PRODUCT_PROPERTY_OVERRIDES := \
	persist.sys.timezone=Asia/Calcutta \
	persist.sys.language=en \
	persist.sys.country=IN \
	ro.telephony.sim.count=2 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	persist.sys.usb.config=mtp,adb \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.mtk.wcn.combo.chipid=-1 \
	persist.radio.mobile.data=0,0


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# $(call inherit-product, build/target/product/full.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
