
# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
    ifdef vendor/omni/config
        $(call inherit-product, vendor/omni/config/common.mk)
    endif
    ifdef vendor/lineage/config
        $(call inherit-product, vendor/lineage/config/common.mk)
    endif

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/huawei/hi6250/dummykernel:kernel

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
ro.build.version.sdk=  \
ro.build.version.release=  \
ro.build.version.security_patch= 
	
ALLOW_MISSING_DEPENDENCIES := true	

PRODUCT_NAME := omni_hi6250
PRODUCT_DEVICE := hi6250
PRODUCT_BRAND := hi6250
PRODUCT_MODEL := PRA LX1
PRODUCT_MANUFACTURER := Huawei
