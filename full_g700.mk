# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Havoc stuff
$(call inherit-product, vendor/rr/config/common_full_phone.mk)
# Inherit from X01BD device
$(call inherit-product, device/huawei/g700/device_g700.mk)


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_g700
BOARD_VENDOR := huawei
PRODUCT_DEVICE := g700
PRODUCT_BRAND := huawei
PRODUCT_MODEL := huawei_g700
PRODUCT_MANUFACTURER := huawei