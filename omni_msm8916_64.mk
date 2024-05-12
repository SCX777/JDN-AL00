#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from msm8916_64 device
$(call inherit-product, device/unknown/msm8916_64/device.mk)

PRODUCT_DEVICE := msm8916_64
PRODUCT_NAME := omni_msm8916_64
PRODUCT_BRAND := Android
PRODUCT_MODEL := HUAWEI
PRODUCT_MANUFACTURER := unknown

PRODUCT_GMS_CLIENTID_BASE := android-unknown

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8916_64-user 6.0.1 MMB28B eng.huawei.20170306.181852 test-keys"

BUILD_FINGERPRINT := Android/msm8916_64/msm8916_64:6.0.1/MMB28B/huawei03061820:user/test-keys
