ABI="arm64-v8a"
OPENCL="ON"


#新建build目录
mkdir buildnew
cd buildnew
cmake ~/git/MNN \
      -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
      -DCMAKE_BUILD_TYPE=Release \
      -DANDROID_ABI="${ABI}" \
      -DMNN_OPENCL=ON \
      -DANDROID_STL=c++_static \
      -DMNN_USE_LOGCAT=false \
      -DANDROID_NATIVE_API_LEVEL=android-21  \
      -DNATIVE_LIBRARY_OUTPUT=. \
    -DMNN_BUILD_FOR_ANDROID_COMMAND=true \
    -DMNN_DEBUG=false \
    -DNATIVE_LIBRARY_OUTPUT=. $1 $2 $3
make -j4

