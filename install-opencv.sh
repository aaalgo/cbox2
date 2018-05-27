#!/bin/bash
export CFLAGS=-fPIC
export CXXFLAGS=-fPIC
export BUILD_SHARED_LIBS=OFF
export BUILD_opencv_apps=OFF
export WITH_OPENCL=OFF
export WITH_CUDA=OFF
export BUILD_TESTS=OFF
export BUILD_DOCS=OFF
export BUILD_PACKAGE=OFF
export BUILD_PERF_TESTS=OFF
export BUILD_JASPER=ON
export WITH_CUFFT=OFF
export WITH_GSTREAMER=OFF
export WITH_OPENEXR=OFF
export CMAKE_INSTALL_PREFIX=/opt/cbox

cd opencv-3.4.1
env | grep WITH > CMakeCache.txt
env | grep BUILD >> CMakeCache.txt
env | grep CMAKE >> CMakeCache.txt
cmake .
make -j8
make install
ln -s /opt/cbox/share/OpenCV/3rdparty/lib/* /opt/cbox/lib
