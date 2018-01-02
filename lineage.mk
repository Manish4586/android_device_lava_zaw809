# Release name
PRODUCT_RELEASE_NAME := irisX8

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Lava/IrisX8/device_IrisX8.mk)

# Locales
PRODUCT_LOCALES := en_US 

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := IrisX8
PRODUCT_NAME := lineage_IrisX8
PRODUCT_BRAND := iris
PRODUCT_MODEL := Iris X8 N
PRODUCT_MANUFACTURER := Lava

