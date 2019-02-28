################################################################################
#
# gst-rpicamsrc
#
################################################################################
GST1_RPICAMSRC_VERSION = 2ea31838fbeab732cd9e672f0c786ca9c3783f99
GST1_RPICAMSRC_SITE = https://github.com/Avnerus/gst-rpicamsrc
GST1_RPICAMSRC_SITE_METHOD = git
GST1_RPICAMSRC_DEPENDENCIES = rpi-userland
GST1_RPICAMSRC_CONF_OPTS += \
    LT_SYS_LIBRARY_PATH="/usr/lib"
	CXXFLAGS="$(TARGET_CXXFLAGS) \
		-I$(STAGING_DIR)/usr/include \
		-I$(STAGING_DIR)/usr/include/interface/vmcs_host/linux \
		-I$(STAGING_DIR)/usr/include/interface/vcos/pthreads"

GST1_RPICAMSRC_AUTORECONF = YES

$(eval $(autotools-package))
#$(eval $(meson-package))
