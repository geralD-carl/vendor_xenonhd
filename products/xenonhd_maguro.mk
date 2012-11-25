# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := xenonhd_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=takju BUILD_FINGERPRINT="google/takju/maguro:4.2/JOP40C/527662:user/release-keys" PRIVATE_BUILD_DESC="takju-user 4.2 JOP40C 527662 release-keys"

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Extra maguro overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/maguro

# Extra tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/tuna

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/xenonhd/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/xenonhd/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/xenonhd/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk
