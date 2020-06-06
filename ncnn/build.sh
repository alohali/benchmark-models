mkdir buildvulkan
cd buildvulkan
cmake -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake -DANDROID_ABI="arm64-v8a" -DANDROID_PLATFORM=android-24  -DANDROID_ARM_NEON=ON  -DNCNN_VULKAN=ON ~/git/ncnn
make -j4
