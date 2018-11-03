ARCHS = armv7 arm64
GO_EASY_ON_ME = 1
DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = iJackOff
iJackOff_FILES = main.m XXXAppDelegate.m XXXRootViewController.m
iJackOff_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"iJackOff\"" || true
