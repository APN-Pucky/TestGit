#!/bin/bash

set -xue

cmake . -Bbuild-dir -DVERSION:STRING="${APPVEYOR_REPO_TAG_NAME}-build-${APPVEYOR_BUILD_NUMER}"
cmake --build build-dir

set +xue
