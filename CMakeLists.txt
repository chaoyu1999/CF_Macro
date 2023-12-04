cmake_minimum_required(VERSION 3.23)
project(msdk)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_EXE_LINKER_FLAGS -static)

add_executable(msdk
        src/main.cpp
        include/main.h
        src/KeyboardMouse.cpp
        include/KeyboardMouse.h
        include/InputListener.h src/InputListener.cpp src/ThreadPool.cpp include/ThreadPool.h)
target_link_libraries(msdk ${CMAKE_SOURCE_DIR}/lib/msdk.lib)





