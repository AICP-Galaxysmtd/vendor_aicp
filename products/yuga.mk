# Inherit AOSP device configuration for yuga
$(call inherit-product-if-exists, device/sony/yuga/aicp.mk)

# yuga overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aicp/overlay/yuga

# Setup device specific product configuration.
PRODUCT_NAME := aicp_yuga
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := yuga
PRODUCT_MODEL := Xperia Z
PRODUCT_MANUFACTURER := Sony

# boot animation
PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip
