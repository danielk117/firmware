################################################################################
#
# rtl8189ftv
#
################################################################################

RTL8189FTV_OPENIPC_VERSION = 71500c28164369800041d1716ac513457179ce93
RTL8189FTV_OPENIPC_SITE = $(call github,jwrdegoede,rtl8189ES_linux,$(RTL8189FTV_OPENIPC_VERSION))
RTL8189FTV_OPENIPC_LICENSE = GPL-2.0
RTL8189FTV_OPENIPC_LICENSE_FILES = COPYING

RTL8189FTV_OPENIPC_MODULE_MAKE_OPTS = --debug=a \
  CONFIG_PLATFORM_ARM_SUNxI=y \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR)
  


$(eval $(kernel-module))
$(eval $(generic-package))
