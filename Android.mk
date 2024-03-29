ifeq ($(TARGET_QCOM_MEDIA_VARIANT),msm8996-caf)
QCOM_MEDIA_ROOT := $(call my-dir)

include $(QCOM_MEDIA_ROOT)/mm-core/Android.mk
include $(QCOM_MEDIA_ROOT)/libstagefrighthw/Android.mk
include $(QCOM_MEDIA_ROOT)/libaac/Android.mk

ifeq ($(call is-board-platform-in-list, $(MSM_VIDC_TARGET_LIST)),true)
include $(QCOM_MEDIA_ROOT)/mm-video-v4l2/Android.mk

ifeq ($(BOARD_USES_ADRENO), true)
include $(QCOM_MEDIA_ROOT)/libc2dcolorconvert/Android.mk
endif

include $(QCOM_MEDIA_ROOT)/hypv-intercept/Android.mk

ifeq ($(TARGET_BOARD_AUTO),true)
include $(QCOM_MEDIA_ROOT)/libsidebandstreamhandle/Android.mk
endif

endif
endif
