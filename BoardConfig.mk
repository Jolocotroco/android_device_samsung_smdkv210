# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#
BOARD_USES_GENERIC_AUDIO := false

# ARMv7-A Cortex-A8 architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_PREBUILT_KERNEL := device/samsung/smdkv210/zImage
TARGET_PROVIDES_INIT_TARGET_RC := true

TARGET_BOARD_PLATFORM := s5pc110
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX540_120
TARGET_BOOTLOADER_BOARD_NAME := smdkv210

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/smdkv210/bluetooth

BOARD_USES_HGL := true
DEFAULT_FB_NUM := 2

# skia
BOARD_USE_SKIA_LCDTEXT := true
# SkTextBox for libtvout
BOARD_USES_SKTEXTBOX := true

# Camera
USE_CAMERA_STUB := false
BOARD_CAMERA_LIBRARIES := camera.smdkv210

# Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_atheros
BOARD_HOSTAPD_DRIVER := AR6000
BOARD_HOSTAPD_PRIVATE_LIB :=
BOARD_WLAN_DEVICE := ar6002
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/ar6000.ko"
WIFI_DRIVER_MODULE_NAME := "ar6000"
WIFI_DRIVER_MODULE_ARG := ""
WIFI_DRIVER_LOADER_DELAY := 3000000

# 3G
BOARD_MOBILEDATA_INTERFACE_NAME := "ppp0"

# Sensors
BOARD_USES_GENERIC_INVENSENSE := false

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun%d/file"

# OpenGL stuff
BOARD_EGL_CFG := device/samsung/smdkv210/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=0

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := false
TARGET_BOOTANIMATION_USE_RGB565 := true

TARGET_SEC_OMX_BIG_MMAP_BUFFER_SIZE := true

# TARGET_DISABLE_TRIPLE_BUFFERING can be used to disable triple buffering
# on per target basis. On crespo it is possible to do so in theory
# to save memory, however, there are currently some limitations in the
# OpenGL ES driver that in conjunction with disable triple-buffering
# would hurt performance significantly (see b/6016711)
TARGET_DISABLE_TRIPLE_BUFFERING := false

BOARD_ALLOW_EGL_HIBERNATION := true

# hwcomposer: custom vsync ioctl
BOARD_CUSTOM_VSYNC_IOCTL := true
