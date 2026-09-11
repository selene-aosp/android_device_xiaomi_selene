#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/selene

AB_OTA_UPDATER := true

# Inherit from mt6768-common
-include device/xiaomi/mt6768-common/BoardConfigCommon.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := selene,selenes,eos

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
ODM_MANIFEST_SKUS += \
    eos

ODM_MANIFEST_EOS_FILES := $(DEVICE_PATH)/manifest_eos.xml

# Kernel
TARGET_KERNEL_CONFIG += vendor/selene.config

# Inherit the proprietary files
include vendor/xiaomi/selene/BoardConfigVendor.mk
