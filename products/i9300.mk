# Inherit AOSP device configuration for i9300.
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Inherit common product files.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aicp/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := aicp_i9300
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9300
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.3/JSS15J/I9300XXUGMJ9:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.3 JSS15J I9300XXUGMJ9 release-keys"
PRODUCT_RELEASE_NAME := GT-I9300

PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
