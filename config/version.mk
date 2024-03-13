MINUS_DATE_YEAR := $(shell date -u +%Y)
MINUS_DATE_MONTH := $(shell date -u +%m)
MINUS_DATE_DAY := $(shell date -u +%d)
MINUS_DATE_HOUR := $(shell date -u +%H)
MINUS_DATE_MINUTE := $(shell date -u +%M)
MINUS_BUILD_DATE_UTC := $(shell date -d '$(MINUS_DATE_YEAR)-$(MINUS_DATE_MONTH)-$(MINUS_DATE_DAY) $(MINUS_DATE_HOUR):$(MINUS_DATE_MINUTE) UTC' +%s)
MINUS_BUILD_DATE := $(MINUS_DATE_YEAR)$(MINUS_DATE_MONTH)$(MINUS_DATE_DAY)-$(MINUS_DATE_HOUR)$(MINUS_DATE_MINUTE)
MINUS_PLATFORM_VERSION := 15.0
MINUS_VERSION := MinusOS_$(MINUS_BUILD)-$(MINUS_PLATFORM_VERSION)-$(MINUS_VERSION_PROP)-$(MINUS_BUILD_DATE)
MINUS_VERSION_PROP := Kabini

# Signing
ifneq (eng,$(TARGET_BUILD_VARIANT))
ifneq (,$(wildcard vendor/aosp/signing/keys/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/aosp/signing/keys/releasekey
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
endif
ifneq (,$(wildcard vendor/aosp/signing/keys/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := vendor/aosp/signing/keys/otakey.x509.pem
endif
endif
