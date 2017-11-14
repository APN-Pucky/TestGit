#!/bin/bash

set -xue

uname -a
uname -m

MXE_DIR=/usr/lib/mxe

MXE_TARGET=x86_64-w64-mingw32.static

${MXE_DIR}/usr/bin/${MXE_TARGET}-cmake . -Bbuild-dir -DVERSION:STRING="${TRAVIS_TAG}"
cmake --build build-dir 

mv build-dir/tuo.exe $TUO_FILE_64

MXE_TARGET=i686-w64-mingw32.static

${MXE_DIR}/usr/bin/${MXE_TARGET}-cmake . -Bbuild-dir -DVERSION:STRING="${TRAVIS_TAG}"
cmake --build build-dir 

mv build-dir/tuo.exe $TUO_FILE_32



set +xue
