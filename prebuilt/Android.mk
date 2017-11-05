LOCAL_PATH := $(call my-dir)

ifneq ($(filter tuna maguro toro toroplus,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)
LOCAL_MODULE        := Lightning
LOCAL_SRC_FILES     := app/Lightning.apk
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_CERTIFICATE   := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

endif
