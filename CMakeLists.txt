cmake_minimum_required(VERSION 3.23)
project(msdk)

set(CMAKE_CXX_STANDARD 11)
include_directories(.)
include_directories(${CMAKE_THREAD_LIBS_INIT})
link_directories(E:\\Msdk)

add_executable(msdk
        main.cpp
        main.h
        KeyboardMouse.cpp
        KeyboardMouse.h
        )
find_package(Threads REQUIRED)
target_link_libraries(msdk PRIVATE   E:\\Msdk\\msdk.dll Threads::Threads)





