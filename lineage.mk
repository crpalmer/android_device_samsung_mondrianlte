$(call inherit-product, device/samsung/mondrianlte/full_mondrianlte.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_DEVICE := mondrianlte
PRODUCT_NAME := cm_mondrianlte
