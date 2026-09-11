#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6768-common
$(call inherit-product, device/xiaomi/mt6768-common/mt6768.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# Firmware
RECOVERY_TS_FW_PATH := vendor/xiaomi/selene/proprietary/vendor/firmware

PRODUCT_COPY_FILES += \
    $(RECOVERY_TS_FW_PATH)/focaltech_ts_fw_.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/focaltech_ts_fw_.bin \
    $(RECOVERY_TS_FW_PATH)/focaltech_ts_fw_huaxing.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/focaltech_ts_fw_huaxing.bin \
    $(RECOVERY_TS_FW_PATH)/mt6631_fm_v1_coeff.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/mt6631_fm_v1_coeff.bin \
    $(RECOVERY_TS_FW_PATH)/mt6631_fm_v1_patch.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/mt6631_fm_v1_patch.bin

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_eos/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.ese.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_eos/android.hardware.nfc.ese.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_eos/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_eos/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_eos/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_eos/com.android.nfc_extras.xml

# Overlays
PRODUCT_PACKAGES += \
    ApertureOverlaySelene \
    FrameworksResOverlaySelene \
    SettingsProviderOverlaySelene \
    SystemUIOverlaySelene

# Rootdir
PRODUCT_PACKAGES += \
    init.project.rc

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 30

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal_info_config.json:$(TARGET_COPY_OUT_VENDOR)/etc/thermal_info_config.json

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/selene/selene-vendor.mk)
