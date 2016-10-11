ARCHS = armv7 armv7s arm64
include @@THEOS@@/makefiles/common.mk

LDFLAGS += -F. -framework JavaScriptCore -framework Security -current_version 1.0 -compatibility_version 1.0 -framework UIKit -framework CFNetwork -framework jspatch

TWEAK_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_FILES = Tweak.xm 

include $(THEOS_MAKE_PATH)/tweak.mk

@@KILL_RULE@@
