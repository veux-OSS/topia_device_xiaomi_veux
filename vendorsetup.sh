echo "Cloning required stuffs..."

echo "Cloning Kernel..."
# Kernel
git clone https://github.com/frost-testzone/kernel_xiaomi_sm6375.git kernel/xiaomi/sm6375 --depth=1

echo "Cloning Vendor..."
# Vendor
git clone https://github.com/tranQuila-Project/vendor_xiaomi_veux vendor/xiaomi/veux

echo "Cloning Dolby...."
# Dolby
git clone https://github.com/frost-testzone/vendor_oneplus_dolby vendor/oneplus/dolby

echo "Cloning hardware related stuff..."
# Hardware
rm -rf hardware/xiaomi && git clone https://github.com/PixelOS-AOSP/hardware_xiaomi hardware/xiaomi
rm -rf hardware/xiaomi/dolby
rm -rf hardware/qcom-caf/sm8350/audio && git clone https://github.com/frost-testzone/hardware_qcom-caf_sm8350_audio hardware/qcom-caf/sm8350/audio

echo "Cloning OTA Stuff...."
# OTA
rm -rf packages/apps/Updater
git clone https://github.com/tranQuila-Project/packages_apps_Updater packages/apps/Updater

echo "Cloning MIUI Camera..."
# MIUI Camera
git clone https://github.com/tranQuila-Project/vendor_xiaomi_miuicamera-veux.git vendor/xiaomi/miuicamera-veux
cd vendor/xiaomi/veux/proprietary/system/priv-app/MiuiCamera/ && rm -rf MiuiCamera.apk && wget https://github.com/MrTopia/device_xiaomi_veux/releases/download/stuffs/MiuiCamera.apk && cd ../../../../../../..

echo "Completed, proceeding to lunch"
