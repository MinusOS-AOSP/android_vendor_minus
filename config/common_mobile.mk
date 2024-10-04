# Inherit common mobile minus stuff
$(call inherit-product, vendor/minus/config/common.mk)

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
