LOCAL_PATH:= $(call my-dir)

# dmtd
AKM_FS_LIB=AKFS_APIs_8963

##### AKM daemon ###############################################################
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/$(AKM_FS_LIB)

LOCAL_SRC_FILES:= \
	$(AKM_FS_LIB)/AKFS_AK8963.c \
	$(AKM_FS_LIB)/AKFS_AOC.c \
	$(AKM_FS_LIB)/AKFS_Device.c \
	$(AKM_FS_LIB)/AKFS_Direction.c \
	$(AKM_FS_LIB)/AKFS_VNorm.c \
	AK8963Driver.c \
	AKFS_APIs.c \
	AKFS_Disp.c \
	AKFS_FileIO.c \
	AKFS_Measure.c \
	main.c

LOCAL_CFLAGS += \
	-Wall \
	-DENABLE_AKMDEBUG=1 \
	-DOUTPUT_STDOUT=1 \
	-DDBG_LEVEL=2 \

LOCAL_MODULE := akmd8963
LOCAL_MODULE_TAGS := optional
LOCAL_FORCE_STATIC_EXECUTABLE := false
LOCAL_SHARED_LIBRARIES := liblog libc libm libutils libcutils
include $(BUILD_EXECUTABLE)
