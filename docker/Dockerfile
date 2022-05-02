ARG EMSCRIPTEN_SDK=sdk-tag-1.39.4-64bit

FROM trzeci/emscripten:${EMSCRIPTEN_SDK} as emscripten_base

ENV OPENCV_REPO=https://github.com/opencv/opencv.git
ENV OPENCV_VERSION=4.3.0

ENV EMSCRIPTEN_BUILD_FOLDER=opencv_build
ENV CMAKE_OVERWRITE_FILE=

RUN mkdir /cmake-lists

COPY build.sh /build.sh
RUN chmod +x /build.sh

ENTRYPOINT ["sh", "-c", "/emsdk_portable/entrypoint && cp /build.sh . && ./build.sh"]
