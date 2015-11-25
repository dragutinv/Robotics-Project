cmake_minimum_required(VERSION 2.8.12)
project(Meanshift_tracking)
add_compile_options(-std=c++0x) # CMake 2.8.12 or newer

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
include_directories(include)

file(GLOB SOURCES "src/*.cpp")

add_executable(Meanshift_tracking ${SOURCES})

target_link_libraries(Meanshift_tracking ${OpenCV_LIBS})
