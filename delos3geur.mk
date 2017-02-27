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

DEVICE_PACKAGE_OVERLAYS += device/samsung/delos3geur/overlay

include device/samsung/msm7x27a-common/msm7x27a.mk

## Build torch app
PRODUCT_PACKAGES += \
    Torch

## Splash screen
PRODUCT_COPY_FILES += \
    device/samsung/delos3geur/rootdir/initlogo.rle:root/initlogo.rle \
    device/samsung/delos3geur/rootdir/initlogo_swa.rle:root/initlogo_swa.rle

## Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml 

$(call inherit-product, vendor/samsung/delos3geur/delos3geur-vendor.mk)
