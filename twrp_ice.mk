#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inheri virtual A/B OTA stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ice device
$(call inherit-product, device/realme/ice/device.mk)

PRODUCT_DEVICE := ice
PRODUCT_NAME := twrp_ice
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 9 SE
PRODUCT_MANUFACTURER := realme
PRODUCT_PLATFORM := lahaina

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3461-user:13 TP1A.220905.001 R.12be919_f765_f764 release-keys"

BUILD_FINGERPRINT := realme/RMX3461/RE54BFL1-user:13/TP1A.220905.001/R.12be919_f765_f764/release-keys
