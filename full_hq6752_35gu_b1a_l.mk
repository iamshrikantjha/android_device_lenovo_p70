# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Set target and base project for flavor build
MTK_TARGET_PROJECT := $(subst full_,,$(TARGET_PRODUCT))
MTK_BASE_PROJECT := $(MTK_TARGET_PROJECT)
MTK_PROJECT_FOLDER := $(shell find device/* -maxdepth 1 -name $(MTK_BASE_PROJECT))
MTK_TARGET_PROJECT_FOLDER := $(shell find device/* -maxdepth 1 -name $(MTK_TARGET_PROJECT))

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
# Inherit from maguro device
$(call inherit-product, device/huaqin/$(MTK_TARGET_PROJECT)/device.mk)


#liunianliang begin
ifneq ($(strip $(wildcard device/huaqin/$(MTK_TARGET_PROJECT)/$(HQ_PROJECT)/$(HQ_CLIENT)/device.mk)),)
include device/huaqin/$(MTK_TARGET_PROJECT)/$(HQ_PROJECT)/$(HQ_CLIENT)/device.mk
else
include device/huaqin/$(MTK_TARGET_PROJECT)/$(HQ_PROJECT)/default/device.mk
endif
export KERNEL_DEFCONFIG
export PRELOADER_TARGET_PRODUCT
export LK_PROJECT
#end
