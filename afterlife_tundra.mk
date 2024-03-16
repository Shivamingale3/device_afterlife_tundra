#
# Copyright (C) 2024 Afterlife Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit common Afterlife configurations
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := afterlife_tundra
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tundra_g-user 13 T1SJ33.117-30-4 6a9b48 release-keys" \
    PRODUCT_NAME=tundra_g

BUILD_FINGERPRINT := motorola/tundra_g/tundra:11/T1SJ33.117-30-4/6a9b48:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola


# CoreGapps
AFTERLIFE_GAPPS := true
AFTERLIFE_CORE := true

# Maintainer

AFTERLIFE_MAINTAINER := Shivam_Ingale


# FaceUnlock

TARGET_FACE_UNLOCK_SUPPORTED := true

# Blur

TARGET_SUPPORTS_BLUR := true

# Pixel charging

USE_PIXEL_CHARGING := false

# TouchGestures

TARGET_SUPPORTS_TOUCHGESTURES := true
TARGET_BOOT_ANIMATION_RES := 1080
