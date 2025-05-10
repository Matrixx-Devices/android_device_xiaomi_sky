#!/bin/bash
#clover Vendor Setup Script
echo "Setting up repositories for Redmi 12 5G / Poco M6 Pro 5G (sky)..."

echo "Cloning kernel repository..."
git clone https://github.com/askthekaif/android_xiaomi_sky_kernel.git -b 15.0 device/xiaomi/sky-kernel

# Clone the vendor source
echo "Cloning vendor repository..."
git clone https://github.com/askthekaif/android_vendor_xiaomi_sky.git -b 15.0 vendor/xiaomi/sky

# Clone the dolby repository
echo "Cloning dolby hardware repository..."
git clone https://github.com/askthekaif/android_hardware_dolby.git hardware/dolby

# Clone the hardware repository
echo "Cloning hardware repository..."
git clone https://github.com/Matrixx-Devices/android_hardware_xiaomi.git -b 15.0 hardware/xiaomi

# Clone the agm repository
echo "cloning agm repository..."
rm -rf hardware/qcom-caf/sm8450/audio/agm && git clone https://github.com/askthekaif/agm.git hardware/qcom-caf/sm8450/audio/agm 

rm -rf hardware/qcom-caf/sm8450/audio/pal && git clone https://github.com/askthekaif/arpal-lx.git hardware/qcom-caf/sm8450/audio/pal

echo "Setup complete. Repositories are ready."

echo "Completed, proceeding to lunch"