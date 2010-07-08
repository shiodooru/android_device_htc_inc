################# DEVICE SPECIFIC STUFF #####################
#
# Below are some things that make sure that the rom runs
# properly on htc incredible hardware
#

$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/inc/overlay

PRODUCT_PROPERTY_OVERRIDES += \
	media.a1026.nsForVoiceRec=0 \
	media.a1026.enableA1026=1 \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.error.receiver.system.apps=com.google.android.feedback \
	ro.setupwizard.enterprise_mode=1 \
	ro.com.google.clientidbase=android-verizon \
	ro.com.google.locationfeatures=1 \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
	ro.cdma.home.operator.numeric=310004 \
	ro.cdma.home.operator.alpha=Verizon \
	ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
	ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
	ro.config.vc_call_vol_steps=7 \
	ro.cdma.otaspnumschema=SELC,1,80,99 \
	ro.telephony.call_ring.multiple=false \
	ro.telephony.call_ring.delay=3000 \
	ro.url.safetylegal=http://www.htc.com/staticfiles/Support/legal/?model=A855 \
	ro.setupwizard.enable_bypass=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y


PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/inc/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    librs_jni

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Passion uses high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_COPY_FILES += \
    device/htc/inc/vold.fstab:system/etc/vold.fstab

ifdef ($(USE_HTC_PROPRIETARIES),true)
PRODUCT_COPY_FILES += \
	device/htc/inc/proprietary/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
	device/htc/inc/proprietary/1_00_sample.xml:system/customize/1_00_sample.xml \
	device/htc/inc/proprietary/AdieHWCodecSetting.csv:system/etc/AdieHWCodecSetting.csv \
	device/htc/inc/proprietary/agps_rm:system/etc/agps_rm \
	device/htc/inc/proprietary/akmd:system/bin/akmd \
	device/htc/inc/proprietary/aparse:system/bin/aparse \
	device/htc/inc/proprietary/AudioBTID.csv:system/etc/AudioBTID.csv \
	device/htc/inc/proprietary/awb_camera:system/bin/awb_camera \
	device/htc/inc/proprietary/BCM4329B1_002.002.023.0298.0303.hcd:system/etc/firmware/BCM4329B1_002.002.023.0298.0303.hcd \
	device/htc/inc/proprietary/bcm4329.ko:system/lib/modules/bcm4329.ko \
	device/htc/inc/proprietary/bma150_usr:system/bin/bma150_usr \
	device/htc/inc/proprietary/bookmarks.xml:system/etc/bookmarks.xml \
	device/htc/inc/proprietary/bootcomplete:system/bin/bootcomplete \
	device/htc/inc/proprietary/btld:system/bin/btld \
	device/htc/inc/proprietary/cam_ins_spmo:system/bin/cam_ins_spmo \
	device/htc/inc/proprietary/CCInfo.txt:system/customize/resource/CCInfo.txt \
	device/htc/inc/proprietary/cid_map.xml:system/customize/cid_map.xml \
	device/htc/inc/proprietary/cidProfile1.xml:system/customize/CID/cidProfile1.xml \
	device/htc/inc/proprietary/cidProfile2.xml:system/customize/CID/cidProfile2.xml \
	device/htc/inc/proprietary/COMMON.xml:system/customize/COMMON.xml \
	device/htc/inc/proprietary/debug_tool:system/bin/debug_tool \
	device/htc/inc/proprietary/de-DE_gl0_sg.bin:system/tts/lang_pico/de-DE_gl0_sg.bin \
	device/htc/inc/proprietary/de-DE_ta.bin:system/tts/lang_pico/de-DE_ta.bin \
	device/htc/inc/proprietary/default.acdb:system/etc/firmware/default.acdb \
	device/htc/inc/proprietary/default_PMIC.acdb:system/etc/firmware/default_PMIC.acdb \
	device/htc/inc/proprietary/default_VZW.acdb:system/etc/firmware/default_VZW.acdb \
	device/htc/inc/proprietary/default.xml_CID:system/customize/CID/default.xml
	device/htc/inc/proprietary/default.xml:system/customize/default.xml \
	device/htc/inc/proprietary/default.xml_MNS:system/customize/MNS/default.xml \
	device/htc/inc/proprietary/dmagent:system/bin/dmagent \
	device/htc/inc/proprietary/e2fsck:system/bin/e2fsck \
	device/htc/inc/proprietary/e2fsck_recvy:system/bin/e2fsck_recvy \
	device/htc/inc/proprietary/en-GB_kh0_sg.bin:system/tts/lang_pico/en-GB_kh0_sg.bin \
	device/htc/inc/proprietary/en-GB_ta.bin:system/tts/lang_pico/en-GB_ta.bin \
	device/htc/inc/proprietary/en-US_lh0_sg.bin:system/tts/lang_pico/en-US_lh0_sg.bin \
	device/htc/inc/proprietary/en-US_ta.bin:system/tts/lang_pico/en-US_ta.bin \
	device/htc/inc/proprietary/es-ES_ta.bin:system/tts/lang_pico/es-ES_ta.bin \
	device/htc/inc/proprietary/es-ES_zl0_sg.bin:system/tts/lang_pico/es-ES_zl0_sg.bin \
	device/htc/inc/proprietary/fbtool:system/bin/fbtool \
	device/htc/inc/proprietary/fr-FR_nk0_sg.bin:system/tts/lang_pico/fr-FR_nk0_sg.bin \
	device/htc/inc/proprietary/fr-FR_ta.bin:system/tts/lang_pico/fr-FR_ta.bin \
	device/htc/inc/proprietary/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
	device/htc/inc/proprietary/gps.conf:system/etc/gps.conf \
	device/htc/inc/proprietary/gralloc.qsd8k.so:system/lib/hw/gralloc.qsd8k.so \
	device/htc/inc/proprietary/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	device/htc/inc/proprietary/htclogkernel:system/bin/htclogkernel \
	device/htc/inc/proprietary/HTC_Quietly_Brilliant.gif:system/customize/resource/HTC_Quietly_Brilliant.gif \
	device/htc/inc/proprietary/Incredible_C_20100310_VZW_Neo_324016_v4_PMIC.acdb:system/etc/firmware/Incredible_C_20100310_VZW_Neo_324016_v4_PMIC.acdb \
	device/htc/inc/proprietary/Incredible_C_20100319_VZW_Neo_324016_v5_VZW.acdb:system/etc/firmware/Incredible_C_20100319_VZW_Neo_324016_v5_VZW.acdb \
	device/htc/inc/proprietary/Incredible_C_20100319_VZW_Neo_324016_v8_default.acdb:system/etc/firmware/Incredible_C_20100319_VZW_Neo_324016_v8_default.acdb \
	device/htc/inc/proprietary/incrediblec-keypad.kcm.bin:system/usr/keychars/incrediblec-keypad.kcm.bin \
	device/htc/inc/proprietary/incrediblec-keypad.kl:system/usr/keylayout/incrediblec-keypad.kl \
	device/htc/inc/proprietary/ip:system/bin/ip \
	device/htc/inc/proprietary/it-IT_cm0_sg.bin:system/tts/lang_pico/it-IT_cm0_sg.bin \
	device/htc/inc/proprietary/it-IT_ta.bin:system/tts/lang_pico/it-IT_ta.bin \
	device/htc/inc/proprietary/keypress:system/bin/keypress \
	device/htc/inc/proprietary/libaes.so:system/lib/libaes.so \
	device/htc/inc/proprietary/libalbum_util.so:system/lib/libalbum_util.so \
	device/htc/inc/proprietary/libAudioTrimmer.so:system/lib/libAudioTrimmer.so \
	device/htc/inc/proprietary/libchecksum.so:system/lib/libchecksum.so \
	device/htc/inc/proprietary/libcurl.so:system/lib/libcurl.so \
	device/htc/inc/proprietary/libDMCmd.so:system/lib/libDMCmd.so \
	device/htc/inc/proprietary/libdm.so:system/lib/libdm.so \
	device/htc/inc/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
	device/htc/inc/proprietary/libext2_blkid.so:system/lib/libext2_blkid.so \
	device/htc/inc/proprietary/libext2_com_err.so:system/lib/libext2_com_err.so \
	device/htc/inc/proprietary/libext2_e2p.so:system/lib/libext2_e2p.so \
	device/htc/inc/proprietary/libext2fs.so:system/lib/libext2fs.so \
	device/htc/inc/proprietary/libext2_profile.so:system/lib/libext2_profile.so \
	device/htc/inc/proprietary/libext2_uuid.so:system/lib/libext2_uuid.so \
	device/htc/inc/proprietary/libflashlite.so:system/lib/libflashlite.so \
	device/htc/inc/proprietary/libflashsnddec.so:system/lib/libflashsnddec.so \
	device/htc/inc/proprietary/libflsaplayerlib.so:system/lib/libflsaplayerlib.so \
	device/htc/inc/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
	device/htc/inc/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
	device/htc/inc/proprietary/libgsl.so:system/lib/libgsl.so \
	device/htc/inc/proprietary/libgtalk_jni.so:system/lib/libgtalk_jni.so \
	device/htc/inc/proprietary/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \
	device/htc/inc/proprietary/libhtcbitmapfactory.so:system/lib/libhtcbitmapfactory.so \
	device/htc/inc/proprietary/libiconv.so:system/lib/libiconv.so \
	device/htc/inc/proprietary/libicule.so:system/lib/libicule.so \
	device/htc/inc/proprietary/libiculx.so:system/lib/libiculx.so \
	device/htc/inc/proprietary/libmm-omxcore.so:system/lib/libmm-omxcore.so \
	device/htc/inc/proprietary/libmode10Graphics.so:system/lib/libmode10Graphics.so \
	device/htc/inc/proprietary/libmode10.so:system/lib/libmode10.so \
	device/htc/inc/proprietary/libmode10_wallpapers.so:system/lib/libmode10_wallpapers.so \
	device/htc/inc/proprietary/libmscompress.so:system/lib/libmscompress.so \
	device/htc/inc/proprietary/libObexJniWrapper.so:system/lib/libObexJniWrapper.so \
	device/htc/inc/proprietary/liboemcamera.so:system/lib/liboemcamera.so \
	device/htc/inc/proprietary/libOlaBase.so:system/lib/libOlaBase.so \
	device/htc/inc/proprietary/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
	device/htc/inc/proprietary/libOmxCore.so:system/lib/libOmxCore.so \
	device/htc/inc/proprietary/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
	device/htc/inc/proprietary/libOmxVdec.so:system/lib/libOmxVdec.so \
	device/htc/inc/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
	device/htc/inc/proprietary/libomx_vo_omx_core.so:system/lib/libomx_vo_omx_core.so \
	device/htc/inc/proprietary/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so \
	device/htc/inc/proprietary/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so \
	device/htc/inc/proprietary/libon2.so:system/lib/libon2.so \
	device/htc/inc/proprietary/libopencorehw.so:system/lib/libopencorehw.so \
	device/htc/inc/proprietary/libopenobex.so:system/lib/libopenobex.so \
	device/htc/inc/proprietary/libpdfreader.so:system/lib/libpdfreader.so \
	device/htc/inc/proprietary/libpvasfcommon.so:system/lib/libpvasfcommon.so \
	device/htc/inc/proprietary/libpvasflocalpbreg.so:system/lib/libpvasflocalpbreg.so \
	device/htc/inc/proprietary/libpvasflocalpb.so:system/lib/libpvasflocalpb.so \
	device/htc/inc/proprietary/libqcomm_omx.so:system/lib/libqcomm_omx.so \
	device/htc/inc/proprietary/librpc.so:system/lib/librpc.so \
	device/htc/inc/proprietary/libscaladoapi.so:system/lib/libscaladoapi.so \
	device/htc/inc/proprietary/libscalado_htcalbum.so:system/lib/libscalado_htcalbum.so \
	device/htc/inc/proprietary/libscaladoutil.so:system/lib/libscaladoutil.so \
	device/htc/inc/proprietary/libsiimpl.so:system/lib/libsiimpl.so \
	device/htc/inc/proprietary/libsorenson.so:system/lib/libsorenson.so \
	device/htc/inc/proprietary/libspeech.so:system/lib/libspeech.so \
	device/htc/inc/proprietary/libt9.so:system/lib/libt9.so \
	device/htc/inc/proprietary/libTVOUT.so:system/lib/libTVOUT.so \
	device/htc/inc/proprietary/libwsp_jni.so:system/lib/libwsp_jni.so \
	device/htc/inc/proprietary/libwsp.so:system/lib/libwsp.so \
	device/htc/inc/proprietary/lsc_camera:system/bin/lsc_camera \
	device/htc/inc/proprietary/mccmnc.xml:system/customize/mccmnc.xml \
	device/htc/inc/proprietary/mke2fs:system/bin/mke2fs \
	device/htc/inc/proprietary/mke2fs_recvy:system/bin/mke2fs_recvy \
	device/htc/inc/proprietary/mm-aenc-omxaac-test:system/bin/mm-aenc-omxaac-test \
	device/htc/inc/proprietary/mm-aenc-omxqcelp13-test:system/bin/mm-aenc-omxqcelp13-test \
	device/htc/inc/proprietary/mmcamera_test:system/bin/mmcamera_test \
	device/htc/inc/proprietary/mm-venc-omx-test:system/bin/mm-venc-omx-test \
	device/htc/inc/proprietary/mns_map.xml:system/customize/mns_map.xml \
	device/htc/inc/proprietary/monitorMTD:system/bin/monitorMTD \
	device/htc/inc/proprietary/mscompress:system/bin/mscompress \
	device/htc/inc/proprietary/netsharing:system/bin/netsharing \
	device/htc/inc/proprietary/PPST:system/bin/PPST \
	device/htc/inc/proprietary/preInstall.opml:system/customize/resource/preInstall.opml \
	device/htc/inc/proprietary/preset.kmz:system/customize/resource/preset.kmz \
	device/htc/inc/proprietary/pvasflocal.cfg:system/etc/pvasflocal.cfg \
	device/htc/inc/proprietary/resize2fs:system/bin/resize2fs \
	device/htc/inc/proprietary/resize2fs_recvy:system/bin/resize2fs_recvy \
	device/htc/inc/proprietary/resource:system/customize/resource/resource \
	device/htc/inc/proprietary/ringtone_01.wma:system/customize/resource/ringtone_01.wma \
	device/htc/inc/proprietary/rsync:system/bin/rsync \
	device/htc/inc/proprietary/rt_tables:system/etc/iproute2/rt_tables \
	device/htc/inc/proprietary/sensors.inc.so:system/lib/hw/sensors.inc.so \
	device/htc/inc/proprietary/ser2net:system/bin/ser2net \
	device/htc/inc/proprietary/ser2net.conf:system/etc/ser2net.conf \
	device/htc/inc/proprietary/setmic:system/bin/setmic \
	device/htc/inc/proprietary/shutdown:system/bin/shutdown \
	device/htc/inc/proprietary/snd:system/bin/snd \
	device/htc/inc/proprietary/snd8k:system/bin/snd8k \
	device/htc/inc/proprietary/sound8k:system/bin/sound8k \
	device/htc/inc/proprietary/spkamp:system/bin/spkamp \
	device/htc/inc/proprietary/timezones.db:system/etc/timezones.db \
	device/htc/inc/proprietary/TPA2018.csv:system/etc/TPA2018.csv \
	device/htc/inc/proprietary/tune2fs:system/bin/tune2fs \
	device/htc/inc/proprietary/udhcpd:system/bin/udhcpd \
	device/htc/inc/proprietary/uevent:system/bin/uevent \
	device/htc/inc/proprietary/voEVRCDec.so:system/lib/voEVRCDec.so \
	device/htc/inc/proprietary/voEVRCEnc.so:system/lib/voEVRCEnc.so \
	device/htc/inc/proprietary/voicemail-conf.xml:system/etc/voicemail-conf.xml \
	device/htc/inc/proprietary/vold.conf:system/etc/vold.conf \
	device/htc/inc/proprietary/vomeOne.cfg:system/etc/vomeOne.cfg \
	device/htc/inc/proprietary/vo_omx_core.cfg:system/etc/vo_omx_core.cfg \
	device/htc/inc/proprietary/voOMXOne.so:system/lib/voOMXOne.so \
	device/htc/inc/proprietary/voQCELPDec.so:system/lib/voQCELPDec.so \
	device/htc/inc/proprietary/voQCELPEnc.so:system/lib/voQCELPEnc.so \
	device/htc/inc/proprietary/voVidDec.dat:system/etc/voVidDec.dat \
	device/htc/inc/proprietary/voVidDec.so:system/lib/voVidDec.so \
	device/htc/inc/proprietary/vptest:system/bin/vptest \
	device/htc/inc/proprietary/VZW.gif:system/customize/resource/VZW.gif \
	device/htc/inc/proprietary/wifitools:system/bin/wifitools \
	device/htc/inc/proprietary/wireless_modem:system/xbin/wireless_modem \
	device/htc/inc/proprietary/WPDB.zip:system/etc/WPDB.zip \
	device/htc/inc/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	device/htc/inc/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \

endif

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

