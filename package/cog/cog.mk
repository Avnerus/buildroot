################################################################################
#
# cog
#
################################################################################

COG_VERSION = master
COG_SITE = $(call github,Igalia,cog,$(COG_VERSION))
COG_DEPENDENCIES = dbus wpewebkit
COG_LICENSE = MIT
COG_LICENSE_FILES = COPYING
COG_CONF_OPTS = \
	-DCOG_BUILD_PROGRAMS=ON \
	-DCOG_HOME_URI='$(call qstrip,$(BR2_PACKAGE_COG_PROGRAMS_HOME_URI))'

ifeq ($(BR2_PACKAGE_COG_PLATFORM_FDO),y)
COG_DEPENDENCIES += libegl libgles wayland wpebackend-fdo
COG_CONF_OPTS += -DCOG_PLATFORM_FDO=ON
else
COG_CONF_OPTS += -DCOG_PLATFORM_FDO=OFF
endif

$(eval $(cmake-package))
