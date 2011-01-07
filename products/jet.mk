# Inherit AOSP device configuration for Jet
$(call inherit-product, device/samsung/jet/full_jet.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, device/samsung/jet/generic_jet.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := jet
PRODUCT_DEVICE := GT-S8000
PRODUCT_MODEL := GT-S8000
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 PRODUCT_NAME=GT-S8000 BUILD_FINGERPRINT=samsung/GT-S8000/GT-S8000/GT-S8000:2.2.1/FRG83/60505:user/release-keys TARGET_BUILD_TYPE=userdebug BUILD_VERSION_TAGS=release-keys
PRIVATE_BUILD_DESC="jet-user 2.2.1 FRG83 60505 release-keys"

ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6-$(shell date +%m%d%Y)-NIGHTLY-JET
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6.1.1-jet-alpha8.2
endif

