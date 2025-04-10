TARGET := iphone:clang:16.5:14.5
INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MediaColor

MediaColor_FILES = Tweak.x ColorSupport.m
MediaColor_CFLAGS = -fobjc-arc
# MediaColor_FRAMEWORKS = MediaPlayer
# MediaColor_PRIVATE_FRAMEWORKS = MediaRemote MediaControls
include $(THEOS_MAKE_PATH)/tweak.mk
