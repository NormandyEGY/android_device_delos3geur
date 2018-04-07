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

DEVICE_PATH := device/nokia/normandy

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

include device/generic/msm7x27a/msm7x27a.mk

## Build torch app
PRODUCT_PACKAGES += \
    Torch

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    service.adb.root=1 \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=adb \
    persist.service.adb.enable=1 \

## Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml 

$(call inherit-product, vendor/nokia/normandy/normandy-vendor.mk)

# Replace Kernel With prebuilt one to avoid booting errors
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/nokia/normandy/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
