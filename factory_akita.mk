#
# Copyright 2021 The Android Open-Source Project
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

TARGET_LINUX_KERNEL_VERSION := 5.15

$(call inherit-product, device/google/zuma/factory_common.mk)
$(call inherit-product, device/google/akita/device-akita.mk)
include device/google/akita/audio/akita/factory-audio-tables.mk

PRODUCT_NAME := factory_akita
PRODUCT_DEVICE := akita
PRODUCT_MODEL := Factory build on Akita
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Google

# default BDADDR for EVB only
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.bluetooth.evb_bdaddr="22:22:22:33:44:55"

# Factory binaries of camera
PRODUCT_PACKAGES += fatp_ak3_wide_hat_tool

# preloaded_nanoapps.json
PRODUCT_SOONG_NAMESPACES += vendor/google_contexthub/devices/factory
