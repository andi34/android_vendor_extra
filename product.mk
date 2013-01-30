# Chromium Browser
PRODUCT_PACKAGES += \
    Chromium

# Lightning Browser for tuna
PRODUCT_PACKAGES += \
    Lightning

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl
