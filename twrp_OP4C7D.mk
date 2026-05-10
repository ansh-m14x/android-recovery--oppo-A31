#
# Copyright (C) 2019 The Android Open Source Project
# Copyright (C) 2019 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Extra VNDK Versions
PRODUCT_EXTRA_VNDK_VERSIONS := 29

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := OP4C7D
PRODUCT_NAME := twrp_OP4C7D
PRODUCT_BRAND := realme
PRODUCT_MODEL := OPPO A31
PRODUCT_MANUFACTURER := OPPO
PRODUCT_RELEASE_NAME := OPPO A31

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=OP4C7D \
    BUILD_PRODUCT=OP4C7D \
    TARGET_DEVICE=OP4C7D

# HACK: Set vendor patch level
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.bootimage.build.date.utc=0 \
    ro.build.date.utc=0

# Dimen
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720
TW_THEME := portrait_hdpi
