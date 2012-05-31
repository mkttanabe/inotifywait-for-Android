LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS   = -std=c99

LOCAL_C_INCLUDES := \
	./jni/regex \
	./jni/libinotifytools

LOCAL_MODULE    := inotifywait
LOCAL_SRC_FILES := wrap.c common.c libinotifytools/inotifytools.c libinotifytools/redblack.c

include $(BUILD_EXECUTABLE)

