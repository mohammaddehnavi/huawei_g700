#
# Copyright (C) 2019-2020 Havoc-OS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# Todo:

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/device/huawei/g700/full_g700.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Havoc stuff
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Google Connectivity Services
TARGET_INCLUDE_WIFI_EXT := true

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_g700
BOARD_VENDOR := huawei
PRODUCT_DEVICE := g700
PRODUCT_BRAND := huawei
PRODUCT_MODEL := huawei_g700
PRODUCT_MANUFACTURER := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

TARGET_VENDOR := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X01BD_1 \
    PRODUCT_NAME=WW_X01BD \
    PRIVATE_BUILD_DESC="2013023-user 8.1.0 HM2013023 8.1.0 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "huawei/2013023/HM2013023:8.1.0/HM2013023/8.1.0:user/release-keys"