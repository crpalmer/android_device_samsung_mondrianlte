# Copyright (C) 2009 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

TARGET_MSM8974_COMMON_WLAN_VARIANT := prima
include device/samsung/tabpro-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8974_sec_mondrian_defconfig
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02900000 --tags_offset 0x02700000
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/mondrianlte/mkbootimg.mk

BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13631488
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2569011200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12661537792

# Recovery

TARGET_RECOVERY_FSTAB := device/samsung/mondrianlte/rootdir/etc/fstab.qcom


# WLAN: Use qmi-client interface to load the correct MAC address
TARGET_USES_QCOM_WCNSS_QMI := true

# OTA Identification
#
# It's fine to install on mondrianwifi or lte because the devices are
# unified other than the fact that one supports telephony and the other
# doesn't.
#
# If someone wants to use the telephony apps for some reason, let's let them.

TARGET_OTA_ASSERT_DEVICE := mondrianwifi,mondrianwifiue,mondrianwifixx,mondrianlte,mondrianltexx
