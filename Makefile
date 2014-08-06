export ARCHS = arm64 armv7 armv7s

include theos/makefiles/common.mk

TWEAK_NAME = ActiContact
ActiContact_FILES = HBACListener.m HBACViewController.m
ActiContact_FRAMEWORKS = UIKit CoreGraphics AddressBookUI
ActiContact_LDFLAGS = -lactivator

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

after-stage::
	@mkdir -p $(THEOS_STAGING_DIR)/Library/Activator/Listeners/ws.hbang.acticontact
	@cp Info.plist $(THEOS_STAGING_DIR)/Library/Activator/Listeners/ws.hbang.acticontact/Info.plist
