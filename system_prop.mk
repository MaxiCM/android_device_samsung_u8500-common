#
# System Properties for u8500
#

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.zygote.disable_gl_preload=1 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    debug.sf.hw=1 \
    debug.hwui.render_dirty_regions=false

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.media.use-awesome=true \
    audio.offload.disable=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=150 \
    net.tethering.noprovisioning=true

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.telephony.ril_class=SamsungU8500RIL \
    ro.telephony.sends_barcount=1 \
    mobiledata.interfaces=pdp0,wlan0,gprs,ppp0

# Disable error Checking
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# Memory management
PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_atlas=true \
    ro.config.max_starting_bg=6 \
    ro.sys.fw.bg_apps_limit=8

# Storage switch
 PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.vold.switchablepair=sdcard0,sdcard1

# Dalvik VM config for 768MB RAM devices
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=48m \
    dalvik.vm.heapsize=128m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=4m

# HWUI tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.drop_shadow_cache_size=1 \
    ro.hwui.gradient_cache_size=0.2 \
    ro.hwui.layer_cache_size=6 \
    ro.hwui.path_cache_size=2 \
    ro.hwui.r_buffer_cache_size=1 \
    ro.hwui.texture_cache_size=8

# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.image-dex2oat-filter=speed \
    dalvik.vm.dex2oat-filter=interpret-only \
    dalvik.vm.dex2oat-flags=--no-watch-dog \
    dalvik.vm.dex2oat-swap=false

# ADB
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
