#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ARV_CUS device
$(call inherit-product, device/hmd/ARV_CUS/device.mk)

PRODUCT_DEVICE := ARV_CUS
PRODUCT_NAME := omni_ARV_CUS
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia C2 Tennen
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-cricket-us-revc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Armstrong_CUS-user 10 QP1A.190711.020 00CUS_0_69S release-keys"

BUILD_FINGERPRINT := Nokia/Armstrong_CUS/ARV_CUS:10/QP1A.190711.020/00CUS_0_69S:user/release-keys
