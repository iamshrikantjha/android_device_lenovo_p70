#
# file create by liunianliang 20150330
#
#


# set locales & aapt config.
PRODUCT_LOCALES := en_US ru_RU ar_EG in_ID bn_IN hi_IN ms_MY th_TH vi_VN uk_UA zh_HK ro_RO sr_RS bg_BG hu_HU el_GR hr_HR sl_SI sk_SK fr_FR zh_CN tr_TR es_US pt_PT fa_IR cs_CZ zh_TW

# Set those variables here to overwrite the inherited values.
PRODUCT_MANUFACTURER := alps
PRODUCT_NAME := full_hq6752_35gu_b1a_l
PRODUCT_DEVICE := hq6752_35gu_b1a_l
PRODUCT_MODEL := hq6752_35gu_b1a_l
PRODUCT_POLICY := android.policy_phone
PRODUCT_BRAND := alps

ifeq ($(TARGET_BUILD_VARIANT), eng)
KERNEL_DEFCONFIG := al891_debug_defconfig
else
KERNEL_DEFCONFIG := al891_defconfig
endif
PRELOADER_TARGET_PRODUCT := al891
LK_PROJECT := al891
