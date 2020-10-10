#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm710-common
-include device/xiaomi/sdm710-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/pyxis

# Assert
TARGET_OTA_ASSERT_DEVICE := pyxis

# Display
TARGET_SCREEN_DENSITY := 440

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# FM Radio
BOARD_HAS_QCA_FM_SOC := "cherokee"
BOARD_HAVE_QCOM_FM := true

# FOD Fingerprint
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.xiaomi_pyxis

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := pyxis_defconfig

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# SELinux neverallows
ifneq ($(TARGET_BUILD_VARIANT),user)
  SELINUX_IGNORE_NEVERALLOWS := true
endif

# Inherit from the proprietary stuffs
-include vendor/xiaomi/pyxis/BoardConfigVendor.mk
