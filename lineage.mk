# Release name
PRODUCT_RELEASE_NAME := Iris X8

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/Lava/IrisX8/device_IrisX8.mk)

# set locales & aapt config.
PRODUCT_LOCALES := en_US de_DE fr_FR
PRODUCT_AAPT_CONFIG := normal nodpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zaw809
PRODUCT_NAME := lineage_zaw809
PRODUCT_BRAND := iris
PRODUCT_MODEL := Iris X8
PRODUCT_MANUFACTURER := Lava
