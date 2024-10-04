# Inherit common Minus stuff
$(call inherit-product, vendor/minus/config/common_mobile.mk)

PRODUCT_SIZE := full

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

# Include Minus LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/minus/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/minus/overlay/dictionaries
