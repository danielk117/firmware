################################################################################
#
# rtl8189ftv
#
################################################################################

RTL8189FTV_OPENIPC_VERSION = 732da93d86a79e23adc75cc3f3f1cdc3b3524504
#RTL8189FTV_OPENIPC_VERSION = c93cfd712a3acd2ecdeda19a66d269c20f8803f1
RTL8189FTV_OPENIPC_SITE = $(call github,jwrdegoede,rtl8189ES_linux,$(RTL8189FTV_OPENIPC_VERSION))
RTL8189FTV_OPENIPC_LICENSE = GPL-2.0
RTL8189FTV_OPENIPC_LICENSE_FILES = COPYING

RTL8189FTV_OPENIPC_MODULE_MAKE_OPTS = --debug=a \
  CONFIG_RTL8189FS = m \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))
