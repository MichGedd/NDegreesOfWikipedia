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

# Utility rule file for ContinuousStart.

# Include the progress variables for this target.
include external/json-develop/CMakeFiles/ContinuousStart.dir/progress.make

external/json-develop/CMakeFiles/ContinuousStart:
	cd /home/debug/CLion/cmake-build-debug-docker/external/json-develop && /usr/bin/ctest -D ContinuousStart

ContinuousStart: external/json-develop/CMakeFiles/ContinuousStart
ContinuousStart: external/json-develop/CMakeFiles/ContinuousStart.dir/build.make

.PHONY : ContinuousStart

# Rule to build all files generated by this target.
external/json-develop/CMakeFiles/ContinuousStart.dir/build: ContinuousStart

.PHONY : external/json-develop/CMakeFiles/ContinuousStart.dir/build

external/json-develop/CMakeFiles/ContinuousStart.dir/clean:
	cd /home/debug/CLion/cmake-build-debug-docker/external/json-develop && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousStart.dir/cmake_clean.cmake
.PHONY : external/json-develop/CMakeFiles/ContinuousStart.dir/clean

external/json-develop/CMakeFiles/ContinuousStart.dir/depend:
	cd /home/debug/CLion/cmake-build-debug-docker && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/debug/CLion /home/debug/CLion/external/json-develop /home/debug/CLion/cmake-build-debug-docker /home/debug/CLion/cmake-build-debug-docker/external/json-develop /home/debug/CLion/cmake-build-debug-docker/external/json-develop/CMakeFiles/ContinuousStart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/json-develop/CMakeFiles/ContinuousStart.dir/depend
