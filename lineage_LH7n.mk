#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/LH7n/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := lineage_LH7n
PRODUCT_DEVICE := LH7n
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LH7n

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=LH7n \
    BuildFingerprint=TECNO/LH7n-GL/TECNO-LH7n:14/UP1A.231005.007/250416V781:user/release-keys

# AxionAOSP Flags
AXION_CAMERA_REAR_INFO := 50
AXION_CAMERA_FRONT_INFO := 8
AXION_MAINTAINER := Shirayuki39
AXION_PROCESSOR := Helio_G99
PRODUCT_NO_CAMERA := false
BYPASS_CHARGE_SUPPORTED := false
TARGET_USES_USLMK := false

# Enable activity open override fix for low-end devices or devices affected by activity open/exit freezing issue 
PERF_ANIM_OVERRIDE := true

# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil

# AxionFX
TARGET_INCLUDE_AXFX := true

# Flashlight strength
TORCH_STR_SUPPORTED := true
