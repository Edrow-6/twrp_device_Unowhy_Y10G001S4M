$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += device/UNOWHY/Y10G001S4M_EEA/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := Y10G001S4M_EEA
PRODUCT_NAME := omni_Y10G001S4M_EEA
PRODUCT_BRAND := UNOWHY
PRODUCT_MODEL := Y10G001S4M_EEA
PRODUCT_MANUFACTURER := malata

# From full_base.mk
# Put fr_FR first in the list, so make it default.
PRODUCT_LOCALES := fr_FR

# From runtime_libart.mk
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    dalvik.vm.image-dex2oat-Xms=64m \
    dalvik.vm.image-dex2oat-Xmx=64m \
    dalvik.vm.dex2oat-Xms=64m \
    dalvik.vm.dex2oat-Xmx=512m \
    ro.dalvik.vm.native.bridge=0

ADDITIONAL_DEFAULT_PROPERTIES += \
    pm.dexopt.first-boot=interpret-only \
    pm.dexopt.boot=verify-profile \
    pm.dexopt.install=interpret-only \
    pm.dexopt.bg-dexopt=speed-profile \
    pm.dexopt.ab-ota=speed-profile \
    pm.dexopt.nsys-library=speed \
    pm.dexopt.shared-apk=speed \
    pm.dexopt.forced-dexopt=speed \
    pm.dexopt.core-app=speed \
    dalvik.vm.image-dex2oat-filter=verify-at-runtime \
    dalvik.vm.dex2oat-filter=verify-at-runtime \
    dalvik.vm.usejit=true

# adb is already there, so just add mtp for now
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="UNOWHY/Y10G001S4M_EEA/Y10G001S4M:9/PPR1.180610.011/1564163634:user/release-keys" \
    PRIVATE_BUILD_DESC="full_unowhy_k1002-user 9 PPR1.180610.011 user.xmlyz.1564163634 release-keys"

    # try force addition of fingerprint
BUILD_FINGERPRINT := "UNOWHY/Y10G001S4M_EEA/Y10G001S4M:9/PPR1.180610.011/1564163634:user/release-keys"