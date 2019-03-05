SOFTBOT_SCRIPTS_VERSION = 1.0.0
SOFTBOT_SCRIPTS_SITE = $(TOPDIR)/softbot-scripts
SOFTBOT_SCRIPTS_SITE_METHOD = local

define SOFTBOT_SCRIPTS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/softbot-stream-video.sh $(TARGET_DIR)/usr/bin/softbot-stream-video.sh
	$(INSTALL) -D -m 0755 $(@D)/softbot-stream-multi.sh $(TARGET_DIR)/usr/bin/softbot-stream-multi.sh
endef

$(eval $(generic-package))

