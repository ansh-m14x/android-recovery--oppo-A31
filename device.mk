LOCAL_PATH := device/oppo/OP4C7D

# Recovery UI Theme Configuration
TARGET_RECOVERY_UI_SCREEN_WIDTH := 720
TARGET_RECOVERY_UI_SCREEN_HEIGHT := 1560

# Adjust margins to handle any screen notches/curved corners
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 100
TARGET_RECOVERY_UI_MARGIN_WIDTH := 0

# ==========================================
# Custom Recovery Init Configuration Scripts
# ==========================================
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.reboot.rc:$(TARGET_RECOVERY_ROOT_OUT)/init.recovery.reboot.rc

