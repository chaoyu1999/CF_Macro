# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files (x86)\CLion 2022.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files (x86)\CLion 2022.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\CF_Macro

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\CF_Macro\cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/msdk.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/msdk.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/msdk.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/msdk.dir/flags.make

CMakeFiles/msdk.dir/main.cpp.obj: CMakeFiles/msdk.dir/flags.make
CMakeFiles/msdk.dir/main.cpp.obj: ../main.cpp
CMakeFiles/msdk.dir/main.cpp.obj: CMakeFiles/msdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CF_Macro\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/msdk.dir/main.cpp.obj"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/msdk.dir/main.cpp.obj -MF CMakeFiles\msdk.dir\main.cpp.obj.d -o CMakeFiles\msdk.dir\main.cpp.obj -c E:\CF_Macro\main.cpp

CMakeFiles/msdk.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msdk.dir/main.cpp.i"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CF_Macro\main.cpp > CMakeFiles\msdk.dir\main.cpp.i

CMakeFiles/msdk.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msdk.dir/main.cpp.s"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\CF_Macro\main.cpp -o CMakeFiles\msdk.dir\main.cpp.s

CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.obj: CMakeFiles/msdk.dir/flags.make
CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.obj: ../src/KeyboardMouse.cpp
CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.obj: CMakeFiles/msdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CF_Macro\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.obj"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.obj -MF CMakeFiles\msdk.dir\src\KeyboardMouse.cpp.obj.d -o CMakeFiles\msdk.dir\src\KeyboardMouse.cpp.obj -c E:\CF_Macro\src\KeyboardMouse.cpp

CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.i"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CF_Macro\src\KeyboardMouse.cpp > CMakeFiles\msdk.dir\src\KeyboardMouse.cpp.i

CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.s"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\CF_Macro\src\KeyboardMouse.cpp -o CMakeFiles\msdk.dir\src\KeyboardMouse.cpp.s

CMakeFiles/msdk.dir/src/InputListener.cpp.obj: CMakeFiles/msdk.dir/flags.make
CMakeFiles/msdk.dir/src/InputListener.cpp.obj: ../src/InputListener.cpp
CMakeFiles/msdk.dir/src/InputListener.cpp.obj: CMakeFiles/msdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CF_Macro\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/msdk.dir/src/InputListener.cpp.obj"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/msdk.dir/src/InputListener.cpp.obj -MF CMakeFiles\msdk.dir\src\InputListener.cpp.obj.d -o CMakeFiles\msdk.dir\src\InputListener.cpp.obj -c E:\CF_Macro\src\InputListener.cpp

CMakeFiles/msdk.dir/src/InputListener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msdk.dir/src/InputListener.cpp.i"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CF_Macro\src\InputListener.cpp > CMakeFiles\msdk.dir\src\InputListener.cpp.i

CMakeFiles/msdk.dir/src/InputListener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msdk.dir/src/InputListener.cpp.s"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\CF_Macro\src\InputListener.cpp -o CMakeFiles\msdk.dir\src\InputListener.cpp.s

CMakeFiles/msdk.dir/src/ThreadPool.cpp.obj: CMakeFiles/msdk.dir/flags.make
CMakeFiles/msdk.dir/src/ThreadPool.cpp.obj: ../src/ThreadPool.cpp
CMakeFiles/msdk.dir/src/ThreadPool.cpp.obj: CMakeFiles/msdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CF_Macro\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/msdk.dir/src/ThreadPool.cpp.obj"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/msdk.dir/src/ThreadPool.cpp.obj -MF CMakeFiles\msdk.dir\src\ThreadPool.cpp.obj.d -o CMakeFiles\msdk.dir\src\ThreadPool.cpp.obj -c E:\CF_Macro\src\ThreadPool.cpp

CMakeFiles/msdk.dir/src/ThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msdk.dir/src/ThreadPool.cpp.i"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CF_Macro\src\ThreadPool.cpp > CMakeFiles\msdk.dir\src\ThreadPool.cpp.i

CMakeFiles/msdk.dir/src/ThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msdk.dir/src/ThreadPool.cpp.s"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\CF_Macro\src\ThreadPool.cpp -o CMakeFiles\msdk.dir\src\ThreadPool.cpp.s

CMakeFiles/msdk.dir/src/detect.cpp.obj: CMakeFiles/msdk.dir/flags.make
CMakeFiles/msdk.dir/src/detect.cpp.obj: ../src/detect.cpp
CMakeFiles/msdk.dir/src/detect.cpp.obj: CMakeFiles/msdk.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CF_Macro\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/msdk.dir/src/detect.cpp.obj"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/msdk.dir/src/detect.cpp.obj -MF CMakeFiles\msdk.dir\src\detect.cpp.obj.d -o CMakeFiles\msdk.dir\src\detect.cpp.obj -c E:\CF_Macro\src\detect.cpp

CMakeFiles/msdk.dir/src/detect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msdk.dir/src/detect.cpp.i"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\CF_Macro\src\detect.cpp > CMakeFiles\msdk.dir\src\detect.cpp.i

CMakeFiles/msdk.dir/src/detect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msdk.dir/src/detect.cpp.s"
	"D:\Program Files (x86)\CLion 2022.2.3\bin\mingw\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\CF_Macro\src\detect.cpp -o CMakeFiles\msdk.dir\src\detect.cpp.s

# Object files for target msdk
msdk_OBJECTS = \
"CMakeFiles/msdk.dir/main.cpp.obj" \
"CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.obj" \
"CMakeFiles/msdk.dir/src/InputListener.cpp.obj" \
"CMakeFiles/msdk.dir/src/ThreadPool.cpp.obj" \
"CMakeFiles/msdk.dir/src/detect.cpp.obj"

# External object files for target msdk
msdk_EXTERNAL_OBJECTS =

msdk.exe: CMakeFiles/msdk.dir/main.cpp.obj
msdk.exe: CMakeFiles/msdk.dir/src/KeyboardMouse.cpp.obj
msdk.exe: CMakeFiles/msdk.dir/src/InputListener.cpp.obj
msdk.exe: CMakeFiles/msdk.dir/src/ThreadPool.cpp.obj
msdk.exe: CMakeFiles/msdk.dir/src/detect.cpp.obj
msdk.exe: CMakeFiles/msdk.dir/build.make
msdk.exe: ../lib/msdk.lib
msdk.exe: CMakeFiles/msdk.dir/linklibs.rsp
msdk.exe: CMakeFiles/msdk.dir/objects1.rsp
msdk.exe: CMakeFiles/msdk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\CF_Macro\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable msdk.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\msdk.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/msdk.dir/build: msdk.exe
.PHONY : CMakeFiles/msdk.dir/build

CMakeFiles/msdk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\msdk.dir\cmake_clean.cmake
.PHONY : CMakeFiles/msdk.dir/clean

CMakeFiles/msdk.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\CF_Macro E:\CF_Macro E:\CF_Macro\cmake-build-release E:\CF_Macro\cmake-build-release E:\CF_Macro\cmake-build-release\CMakeFiles\msdk.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/msdk.dir/depend
