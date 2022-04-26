#!/bin/sh

echo "Building OpenCV:${OPENCV_VERSION}..."; \
# Clone OpenCV repo
git clone --branch ${OPENCV_VERSION} --progress --depth 1 ${OPENCV_REPO}; \
# Build OpenCV
python ./opencv/platforms/js/build_js.py ${EMSCRIPTEN_BUILD_FOLDER} --build_wasm --build_test --build_flags "-s WASM=1 -s WASM_ASYNC_COMPILATION=0"; \
# Copy built 'binaries' to the separate folder TODO: Fix incorrect copy path
cp -a ${EMSCRIPTEN_BUILD_FOLDER}/bin/ /code; \
# Cleanup
rm -rf opencv
