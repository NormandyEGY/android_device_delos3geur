# Copyright (C) 2013 The CyanogenMod Project
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

## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

DEVICE_PATH := device/nokia/normandy

## Inherit common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Inherit device files
$(call inherit-product, $(DEVICE_PATH)/normandy.mk)

## Setup device configuration
PRODUCT_NAME := cm_normandy
PRODUCT_BRAND := Nokia
PRODUCT_MANUFACTURER := Nokia
PRODUCT_MODEL := normandy
PRODUCT_RELEASE_NAME := normandy
PRODUCT_DEVICE := normandy

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=Nokia \
    PRODUCT_NAME=Nokia_XL \
    BUILD_PRODUCT=RM-1030

#    BUILD_FINGERPRINT=qcom/msm8625/msm8625:4.1.2/JZO54K/eng.ZYC.20140213.151118:eng/test-keys

## Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
