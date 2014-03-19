# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# Inherit common product files.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aicp/configs/gsm.mk)

# SGS2 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aicp/overlay/samsung/galaxysmtd

# Setup device specific product configuration.
PRODUCT_DEVICE := galaxysmtd
PRODUCT_NAME := aicp_galaxysmtd
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9000

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"
PRODUCT_RELEASE_NAME := GT-I9000

# Copy i9100 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
   vendor/aicp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation-alt.zip
