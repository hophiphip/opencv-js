#!/bin/sh

echo "Building OpenCV:${OPENCV_VERSION}..."; \
# Clone OpenCV repo
git clone --branch ${OPENCV_VERSION} --progress --depth 1 ${OPENCV_REPO}; \
# If overwrite cmake file is set then overwrite it
if [ "${CMAKE_OVERWRITE_FILE}" ]; then cp -rf ${CMAKE_OVERWRITE_FILE} opencv/modules/js/CMakeLists.txt; fi; \
# Build OpenCV
python ./opencv/platforms/js/build_js.py ${EMSCRIPTEN_BUILD_FOLDER} --build_wasm --build_test --build_flags "-s WASM=1 -s WASM_ASYNC_COMPILATION=0"; \
# Copy built 'binaries' to the build folder
cp -a ${EMSCRIPTEN_BUILD_FOLDER}/bin/. /code; \
# Cleanup
rm -rf opencv; \
# Remove unnecessary build files
rm -rf opencv_build
