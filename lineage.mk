# Release name
PRODUCT_RELEASE_NAME := irisX8

# Inherit some common CM stuff.
$(call inherit-product, vendor/viper/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Lava/IrisX8/device_IrisX8.mk)

# Locales
PRODUCT_LOCALES := en_US en_IN fr_FR it_IT es_ES

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := irisX8
PRODUCT_NAME := viper_IrisX8
PRODUCT_BRAND := iris
PRODUCT_MODEL := Iris X8 N
PRODUCT_MANUFACTURER := Lava

