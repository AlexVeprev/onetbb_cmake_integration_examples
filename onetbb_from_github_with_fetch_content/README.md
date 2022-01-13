# Integrate oneTBB into CMake project using FetchContent module

This example demonstrates how to:

* configure build files for application with *downloading* oneTBB sources on-the-fly;
* build application along with oneTBB;
* run the application.

Such approach may be useful if you want to build oneTBB from sources on your side, but don't want to care about storing these sources inside your project.

Content

* CMakeLists.txt - main part of the example that demonstrates CMake configuration with oneTBB integration;
* my_app.cpp - source file for the simplest application that just calls TBB_runtime_version() function from oneTBB and prints output;
* run.sh - script to try the example on Linux. Call `./run.sh` to try or just use this script as an instruction.