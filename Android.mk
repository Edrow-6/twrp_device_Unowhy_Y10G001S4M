ifneq ($(filter Y10G001S4M_EEA,$(TARGET_DEVICE)),)

LOCAL_PATH := device/UNOWHY/Y10G001S4M_EEA

include $(call all-makefiles-under,$(LOCAL_PATH))

endif