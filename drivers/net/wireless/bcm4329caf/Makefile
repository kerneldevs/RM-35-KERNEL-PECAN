# bcm4329
DHDCFLAGS = \
-DLINUX \
-DBCMDRIVER \
-DBCMDONGLEHOST \
-DDHDTHREAD \
-DBCMWPA2  \
-DUNRELEASEDCHIP \
-Dlinux \
-DDHD_SDALIGN=32 \
-DMAX_HDR_READ=32 \
-DDHD_FIRSTREAD=32 \
-DDHD_GPL \
-DDHD_SCHED \
-DBDC \
-DTOE \
-DDHD_BCMEVENTS \
-DSHOW_EVENTS \
-DBCMSDIO \
-DBCMLXSDMMC \
-DBCMPLATFORM_BUS \
-Wall \
-Wstrict-prototypes \
-Werror \
-DOOB_INTR_ONLY \
-DMMC_SDIO_ABORT \
-DEMBEDDED_PLATFORM \
-DGET_CUSTOM_MAC_ENABLE \
-DSET_RANDOM_MAC_SOFTAP \
-DHW_OOB \
-Idrivers/net/wireless/bcm4329 -Idrivers/net/wireless/bcm4329/include \
-Wno-error=unused-but-set-variable				      \
-Wno-error=array-bounds

DHDOFILES = dhd_linux.o linux_osl.o bcmutils.o dhd_common.o dhd_custom_gpio.o \
	wl_iw.o siutils.o sbutils.o aiutils.o hndpmu.o bcmwifi.o dhd_sdio.o   \
	dhd_linux_sched.o dhd_cdc.o bcmsdh_sdmmc.o bcmsdh.o bcmsdh_linux.o    \
	bcmsdh_sdmmc_linux.o

obj-$(CONFIG_BCM4329) += wireless.o
wireless-objs += $(DHDOFILES)

ifeq ($(CONFIG_BRCM4329_USE_STATIC_BUF),y)
EXTRA_CFLAGS += -DDHD_USE_STATIC_BUF
endif

ifeq ($(CONFIG_BRCM_USE_SOFTAP),y)
EXTRA_CFLAGS += -DSOFTAP
endif

EXTRA_CFLAGS = $(DHDCFLAGS)
EXTRA_LDFLAGS += --strip-debug
