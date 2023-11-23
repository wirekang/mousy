cmake_minimum_required(VERSION 3.26)
project(mousy)
set(CMAKE_CXX_STANDARD 17)

add_executable(mousy
        src/main.cc
        src/build-constant.h
)

################### Dependencies

# Common

# Linux
if (UNIX AND NOT APPLE)
    find_package(X11 REQUIRED)
    target_include_directories(mousy PUBLIC ${X11_INCLUDE_DIR})
    target_link_libraries(mousy PUBLIC ${X11_LIBRARIES})
endif ()

################### Definitions

# Common
target_compile_definitions(mousy PUBLIC MOUSY_BUILD_VERSION=$ENV{MOUSY_BUILD_VERSION})

# Windows
if (WIN32)
    target_compile_definitions(mousy PUBLIC MOUSY_WINDOWS)
endif ()

# Linux
if (UNIX AND NOT APPLE)
    target_compile_definitions(mousy PUBLIC MOUSY_X11)
endif ()

## Apple
#if (APPLE)
#    target_compile_definitions(mousy PUBLIC MOUSY_APPLE)
#endif ()
