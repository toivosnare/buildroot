################################################################################
#
# gnucobol
#
################################################################################

GNUCOBOL_VERSION = 3.1.2
GNUCOBOL_SITE = $(BR2_GNU_MIRROR)/gnucobol
GNUCOBOL_CONF_OPTS += --without-db --without-json
GNUCOBOL_CONF_ENV = COB_CC=$(TARGET_CC) COB_CFLAGS=-I$(TARGET_DIR)/usr/include COB_LDFLAGS=-L$(TARGET_DIR)/usr/lib
GNUCOBOL_DEPENDENCIES = gmp

HOST_GNUCOBOL_CONF_OPTS += --without-db --without-json
HOST_GNUCOBOL_CONF_ENV = COB_CC=$(TARGET_CC) COB_CFLAGS=-I$(TARGET_DIR)/usr/include COB_LDFLAGS=-L$(TARGET_DIR)/usr/lib
HOST_GNUCOBOL_DEPENDENCIES = gmp gnucobol

HOST_COBC = $(HOST_DIR)/bin/cobc

$(eval $(autotools-package))
$(eval $(host-autotools-package))
