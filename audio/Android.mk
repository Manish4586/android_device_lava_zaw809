LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= audio.cpp

LOCAL_MODULE := audio.primary.mt6592
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/media/audio/include/ system/core/include/ frameworks/av/include/ hardware/libhardware/include/
LOCAL_SHARED_LIBRARIES := libdl libcutils liblog libutils libbinder

include $(BUILD_SHARED_LIBRARY)

LIBORIG := $(LOCAL_INSTALLED_MODULE)
LIBLINK1 := $(subst audio.primary.mt6592,audio.primary.default,$(LIBORIG))
$(LIBLINK1): $(LIBORIG)
	@echo "Symlink: $@ -> $(notdir $<)"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(notdir $<) $@
ALL_MODULES.$(LOCAL_MODULE).INSTALLED := \
	$(ALL_MODULES.$(LOCAL_MODULE).INSTALLED) $(LIBLINK1)
LIBORIG :=
LIBLINK1 :=
