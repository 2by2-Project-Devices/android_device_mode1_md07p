#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from MD-07P device
$(call inherit-product, device/mode1/md07p/device.mk)

PRODUCT_DEVICE := md07p
PRODUCT_NAME := lineage_md07p
PRODUCT_BRAND := Mode1
PRODUCT_MODEL := MD-07P
PRODUCT_MANUFACTURER := p-up

PRODUCT_GMS_CLIENTID_BASE := android-p-up

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName="MD-07P" \
    ProductModel="MD-07P" \
    BuildDesc=$(call normalize-path-list, "sys_mssi_64_cn_armv82-user 15 AP3A.240905.015.A2 1770111972 release-keys") \
    BuildFingerprint="Mode1/Mode1Pocket/MD-07P:15/AP3A.240905.015.A2/1770111972:user/release-keys"
