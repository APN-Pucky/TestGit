#!/bin/bash

set -xue

MXE_DIR=/usr/lib/mxe

if [ "$TUO_PLATFORM" = "windows32" ]; then
    MXE_TARGET=i686-w64-mingw32.static
fi

if [ "$TU_PLATFORM" = "windows64" ]; then
    MXE_TARGET=x86_64-w64-mingw32.static
fi

${MXE_DIR}/usr/bin/${MXE_TARGET}-cmake . -Bbuild-dir -DVERSION:STRING="${APPVEYOR_REPO_TAG_NAME}-build-${APPVEYOR_BUILD_NUMER}"
cmake --build build-dir 

set +xue
