#
# Copyright 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

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
