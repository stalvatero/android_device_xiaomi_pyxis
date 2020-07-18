#
# Copyright (C) 2020 The LineageOS Project
# Copyright (C) 2019-2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from pyxis device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := pyxis
PRODUCT_MODEL :=  MI 9 Lite
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_pyxis
