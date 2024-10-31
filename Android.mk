LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := static-curl-openssl
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_EXPORT_LDLIBS := $(LOCAL_PATH)/armeabi-v7a/libcrypto.a \
                           $(LOCAL_PATH)/armeabi-v7a/libcurl.a \
                           $(LOCAL_PATH)/armeabi-v7a/libssl.a \
                           -lz
endif
ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
    LOCAL_EXPORT_LDLIBS := $(LOCAL_PATH)/arm64-v8a/libcrypto.a \
                           $(LOCAL_PATH)/arm64-v8a/libcurl.a \
                           $(LOCAL_PATH)/arm64-v8a/libssl.a \
                           -lz
endif
ifeq ($(TARGET_ARCH_ABI),x86)
    LOCAL_EXPORT_LDLIBS := $(LOCAL_PATH)/x86/libcrypto.a \
                           $(LOCAL_PATH)/x86/libcurl.a \
                           $(LOCAL_PATH)/x86/libssl.a \
                           -lz
endif
ifeq ($(TARGET_ARCH_ABI),x86_64)
    LOCAL_EXPORT_LDLIBS := $(LOCAL_PATH)/x86_64/libcrypto.a \
                           $(LOCAL_PATH)/x86_64/libcurl.a \
                           $(LOCAL_PATH)/x86_64/libssl.a \
                           -lz
endif

include $(BUILD_STATIC_LIBRARY)
