LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# Module name should match apk name to be installed
LOCAL_MODULE := TDsquareDance
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := TDsquareDance.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH := $(TARGET_OUT)/vendor/operator/app
#LOCAL_DEX_PREOPT := false
ifeq ($(strip $(MTK_CIP_SUPPORT)), yes)
LOCAL_MODULE_PATH := $(TARGET_CUSTOM_OUT)/app 
endif

include $(BUILD_PREBUILT)

