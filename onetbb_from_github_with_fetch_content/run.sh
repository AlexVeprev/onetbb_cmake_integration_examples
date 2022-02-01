#!/usr/bin/env bash

set -x -e

# Cleanup
rm -rf build

# Configure build files for application (oneTBB is downloaded inside)
cmake -B build -S .

# Build application along with oneTBB
cmake --build build --target my_app --verbose --parallel

# Run application
./build/my_app
