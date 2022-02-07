# Integrate pre-built oneTBB from GitHub into CMake project

This example demonstrates how to:

* configure build files for application integrating oneTBB from official pre-built GitHub package;
* build application;
* run the application.

Such approach may be useful if you want to use official oneTBB binaries published on GitHub.

Content

* CMakeLists.txt - main part of the example that demonstrates CMake configuration with oneTBB integration;
* my_app.cpp - source file for the simplest application that just calls TBB_runtime_version() function from oneTBB and prints output;
* run.sh - script to try the example on Linux. Call `./run.sh` to try or just use this script as an instruction.
