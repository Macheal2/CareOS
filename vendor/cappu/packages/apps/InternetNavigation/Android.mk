#ifeq ($(strip $(CAPPU_INTERNET_NAVIGATION_SUPPORT)), yes)
#LOCAL_PATH:= $(call my-dir)

#include $(CLEAR_VARS)

#LOCAL_MODULE_TAGS := optional


#LOCAL_SRC_FILES := $(call all-java-files-under, src)

#LOCAL_PACKAGE_NAME := InternetNavigation
#LOCAL_CERTIFICATE := platform

#include $(BUILD_PACKAGE)

##### Use the folloing include to make our test apk.
#include $(call all-makefiles-under,$(LOCAL_PATH))

#endif
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_JAVA_LIBRARIES += cappu-framework
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := InternetNavigation

LOCAL_CERTIFICATE := platform
include $(BUILD_PACKAGE)
