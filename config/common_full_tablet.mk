# Inherit mobile full common Lineage stuff
$(call inherit-product, vendor/minus/config/common_mobile_full.mk)

# Inherit tablet common Lineage stuff
$(call inherit-product, vendor/minus/config/tablet.mk)

$(call inherit-product, vendor/minus/config/telephony.mk)
