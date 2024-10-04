# Inherit mobile full common minus stuff
$(call inherit-product, vendor/minus/config/common_mobile_full.mk)

# Inherit tablet common minus stuff
$(call inherit-product, vendor/minus/config/tablet.mk)

$(call inherit-product, vendor/minus/config/telephony.mk)
