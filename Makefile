GO_EASY_ON_ME = 1
THEOS_PACKAGE_DIR_NAME = debs
include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = HubBub
HubBub_FILES = main.m HBAppDelegate.m HBRootViewController.m
HubBub_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk
after-install::
	install.exec "uicache"
