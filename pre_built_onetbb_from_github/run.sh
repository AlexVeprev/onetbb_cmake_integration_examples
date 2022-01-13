#!/usr/bin/env bash

set -x -e

# These two variables can be changed to try another oneTBB version
ONETBB_VERSION=2021.5.0
ONETBB_SHA256=74861b1586d6936b620cdab6775175de46ad8b0b36fa6438135ecfb8fb5bdf98  # taken from release decription on https://github.com/oneapi-src/oneTBB/releases

# Internal variables
onetbb_archive_name=oneapi-tbb-${ONETBB_VERSION}-lin.tgz
onetbb_download_url=https://github.com/oneapi-src/oneTBB/releases/download/v${ONETBB_VERSION}/${onetbb_archive_name}
onetbb_folder_name=oneapi-tbb-${ONETBB_VERSION}

# Cleanup
rm -rf ${onetbb_archive_name} ${onetbb_folder_name} build onetbb_sha256.sum

# Download pre-built oneTBB package from GitHub and verify checksum
wget ${onetbb_download_url} -O ${onetbb_archive_name}
echo "${ONETBB_SHA256}  ${onetbb_archive_name}" > onetbb_sha256.sum
sha256sum -c onetbb_sha256.sum

# Unpack downloaded oneTBB
tar xaf ${onetbb_archive_name}

# Configure build files for application. Let CMake know where to search for oneTBB using CMAKE_PREFIX_PATH
cmake -DCMAKE_PREFIX_PATH=${onetbb_folder_name} -B build -S .

# Build application
cmake --build build --verbose

# Run application
build/my_app
