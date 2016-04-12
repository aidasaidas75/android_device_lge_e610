#
# Copyright (C) 2013 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL e610 devices, and
# are also specific to e610 devices
#
# Everything in this directory will become public

$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)
#$(call inherit-product, device/lge/msm7x27a-common/nfc.mk)

$(call inherit-product-if-exists, vendor/lge/e610/e610-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/e610/overlay

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/init.m4.rc:root/init.m4.rc \
    $(LOCAL_PATH)/ueventd.m4.rc:root/ueventd.m4.rc \
    $(LOCAL_PATH)/fstab.m4:root/fstab.m4

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/m4_keypad.kl:system/usr/keylayout/m4_keypad.kl \
    $(LOCAL_PATH)/configs/touch_mcs8000.idc:system/usr/idc/touch_mcs8000.idc \
    $(LOCAL_PATH)/configs/touch_mcs8000.kl:system/usr/keylayout/touch_mcs8000.kl
