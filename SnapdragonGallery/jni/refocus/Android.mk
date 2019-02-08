LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libwa_refocus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := libs/armeabi-v7a/$(LOCAL_MODULE).so
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := $(suffix $(LOCAL_SRC_FILES))
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libwa_refocus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := libs/arm64-v8a/$(LOCAL_MODULE).so
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := $(suffix $(LOCAL_SRC_FILES))
LOCAL_MULTILIB := 64
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libjni_refocus
LOCAL_SRC_FILES := refocus_jni.cpp
LOCAL_MULTILIB := 32
LOCAL_LDLIBS :=-llog
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libwa_refocus
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libjni_refocus
LOCAL_SRC_FILES := refocus_jni.cpp
LOCAL_MULTILIB := 64
LOCAL_LDLIBS :=-llog
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := libwa_refocus
include $(BUILD_SHARED_LIBRARY)