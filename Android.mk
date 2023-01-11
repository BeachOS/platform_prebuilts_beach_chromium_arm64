ifeq ($(TARGET_ARCH),arm64)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := TrichromeLibrary
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MULTILIB := both
LOCAL_MODULE_TARGET_ARCH := arm64
LOCAL_SRC_FILES := TrichromeLibrary.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TrichromeWebView
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MULTILIB := both
LOCAL_REQUIRED_MODULES := \
        libwebviewchromium_loader \
        libwebviewchromium_plat_support \
        TrichromeLibrary
LOCAL_OVERRIDES_PACKAGES := webview
LOCAL_MODULE_TARGET_ARCH := arm64
LOCAL_SRC_FILES := TrichromeWebView.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TrichromeChrome
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MULTILIB := both
LOCAL_REQUIRED_MODULES := \
        TrichromeLibrary
LOCAL_OVERRIDES_PACKAGES := Browser2 QuickSearchBox
LOCAL_MODULE_TARGET_ARCH := arm64
LOCAL_SRC_FILES := TrichromeChrome.apk
include $(BUILD_PREBUILT)

endif
