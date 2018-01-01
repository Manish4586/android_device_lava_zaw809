LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
             ril.cpp \
             xlog.cpp \
             wvm.cpp \
             gps.cpp \
             egl.cpp \
             audio.cpp \
             ui.cpp \
             crypto.c \
             ssl.cpp \
             mtkplayer.cpp

LOCAL_SHARED_LIBRARIES := libbinder libcutils libutils liblog libicuuc libui libcrypto
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
