# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/debug/CLion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/debug/CLion/cmake-build-debug-docker

# Include any dependencies generated for this target.
include external/json-develop/test/CMakeFiles/test-merge_patch.dir/depend.make

# Include the progress variables for this target.
include external/json-develop/test/CMakeFiles/test-merge_patch.dir/progress.make

# Include the compile flags for this target's objects.
include external/json-develop/test/CMakeFiles/test-merge_patch.dir/flags.make

external/json-develop/test/CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.o: external/json-develop/test/CMakeFiles/test-merge_patch.dir/flags.make
external/json-develop/test/CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.o: ../external/json-develop/test/src/unit-merge_patch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/debug/CLion/cmake-build-debug-docker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/json-develop/test/CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.o"
	cd /home/debug/CLion/cmake-build-debug-docker/external/json-develop/test && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.o -c /home/debug/CLion/external/json-develop/test/src/unit-merge_patch.cpp

external/json-develop/test/CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.i"
	cd /home/debug/CLion/cmake-build-debug-docker/external/json-develop/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/debug/CLion/external/json-develop/test/src/unit-merge_patch.cpp > CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.i

external/json-develop/test/CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.s"
	cd /home/debug/CLion/cmake-build-debug-docker/external/json-develop/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/debug/CLion/external/json-develop/test/src/unit-merge_patch.cpp -o CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.s

# Object files for target test-merge_patch
test__merge_patch_OBJECTS = \
"CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.o"

# External object files for target test-merge_patch
test__merge_patch_EXTERNAL_OBJECTS = \
"/home/debug/CLion/cmake-build-debug-docker/external/json-develop/test/CMakeFiles/doctest_main.dir/src/unit.cpp.o"

external/json-develop/test/test-merge_patch: external/json-develop/test/CMakeFiles/test-merge_patch.dir/src/unit-merge_patch.cpp.o
external/json-develop/test/test-merge_patch: external/json-develop/test/CMakeFiles/doctest_main.dir/src/unit.cpp.o
external/json-develop/test/test-merge_patch: external/json-develop/test/CMakeFiles/test-merge_patch.dir/build.make
external/json-develop/test/test-merge_patch: external/json-develop/test/CMakeFiles/test-merge_patch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/debug/CLion/cmake-build-debug-docker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-merge_patch"
	cd /home/debug/CLion/cmake-build-debug-docker/external/json-develop/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-merge_patch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/json-develop/test/CMakeFiles/test-merge_patch.dir/build: external/json-develop/test/test-merge_patch

.PHONY : external/json-develop/test/CMakeFiles/test-merge_patch.dir/build

external/json-develop/test/CMakeFiles/test-merge_patch.dir/clean:
	cd /home/debug/CLion/cmake-build-debug-docker/external/json-develop/test && $(CMAKE_COMMAND) -P CMakeFiles/test-merge_patch.dir/cmake_clean.cmake
.PHONY : external/json-develop/test/CMakeFiles/test-merge_patch.dir/clean

external/json-develop/test/CMakeFiles/test-merge_patch.dir/depend:
	cd /home/debug/CLion/cmake-build-debug-docker && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/debug/CLion /home/debug/CLion/external/json-develop/test /home/debug/CLion/cmake-build-debug-docker /home/debug/CLion/cmake-build-debug-docker/external/json-develop/test /home/debug/CLion/cmake-build-debug-docker/external/json-develop/test/CMakeFiles/test-merge_patch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/json-develop/test/CMakeFiles/test-merge_patch.dir/depend

