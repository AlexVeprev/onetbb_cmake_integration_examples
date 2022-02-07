cmake_minimum_required(VERSION 3.13)

project(my_app LANGUAGES CXX)

# Create application
add_executable(my_app)
target_sources(my_app PRIVATE my_app.cpp)

# Find pre-built oneTBB
find_package(TBB 2021.5.0 REQUIRED)

# Connect imported oneTBB core target to our application
target_link_libraries(my_app PRIVATE TBB::tbb)
