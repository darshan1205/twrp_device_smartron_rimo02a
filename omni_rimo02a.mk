# Release name
PRODUCT_RELEASE_NAME := rimo02a

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rimo02a
PRODUCT_NAME := omni_rimo02a
PRODUCT_BRAND := Smartron
PRODUCT_MODEL := T5524
PRODUCT_MANUFACTURER := Smartron

TARGET_VENDOR_PRODUCT_NAME := srtphone
TARGET_VENDOR_DEVICE_NAME := rimo02a
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=rimo02a PRODUCT_NAME=srtphone

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=srtphone \
    ro.product.device=rimo02a
