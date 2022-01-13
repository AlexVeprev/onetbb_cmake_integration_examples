cmake_minimum_required(VERSION 3.14)  # FetchContent_MakeAvailable is available since 3.14

project(my_app LANGUAGES CXX)

# Create application
add_executable(my_app)
target_sources(my_app PRIVATE my_app.cpp)

# Download oneTBB during configuration phase
include(FetchContent)
FetchContent_Declare(
  onetbb
  GIT_REPOSITORY https://github.com/oneapi-src/oneTBB.git
  GIT_TAG v2021.5.0
)

# Customize oneTBB configuration
option(TBB_TEST OFF)

# Make oneTBB source tree available in this project (like add_subdirectory)
FetchContent_MakeAvailable(onetbb)

# Connect imported oneTBB core target to our application
target_link_libraries(my_app PRIVATE TBB::tbb)
