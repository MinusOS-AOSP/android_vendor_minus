# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# MinusOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.minusos.version=$(MINUS_VERSION) \
    ro.minusos.device=$(CUSTOM_BUILD) \
    ro.minusos.releasetype=$(MINUS_BUILDTYPE) \
    ro.modversion=$(MINUS_VERSION) \
    ro.minusos.build.data=$(BUILD_DATE) \
    ro.minusos.fingerprint=$(ROM_FINGERPRINT)
