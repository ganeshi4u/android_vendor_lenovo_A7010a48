LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),A7010a48)

include $(CLEAR_VARS)
LOCAL_MODULE := libhwm
LOCAL_SRC_FILES_64 := lib64/libhwm.so
LOCAL_SRC_FILES_32 := lib/libhwm.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcustom_prop
LOCAL_SRC_FILES_64 := lib64/libcustom_prop.so
LOCAL_SRC_FILES_32 := lib/libcustom_prop.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

ifeq ($(USE_MTK_CAMERA_WRAPPER),true)
include $(CLEAR_VARS)
LOCAL_MODULE := libcam2halsensor
LOCAL_SRC_FILES_64 := lib64/libcam2halsensor.so
LOCAL_SRC_FILES_32 := lib/libcam2halsensor.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)
 
include $(CLEAR_VARS)
LOCAL_MODULE := libcameracustom
LOCAL_SRC_FILES_64 := lib64/libcameracustom.so
LOCAL_SRC_FILES_32 := lib/libcameracustom.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)
endif

endif
