# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\micha\CLionProjects\NDegreesOfWikipedia

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local

# Utility rule file for ContinuousSubmit.

# Include the progress variables for this target.
include external/json-develop/CMakeFiles/ContinuousSubmit.dir/progress.make

external/json-develop/CMakeFiles/ContinuousSubmit:
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop && "C:\Program Files\JetBrains\CLion 2020.2.1\bin\cmake\win\bin\ctest.exe" -D ContinuousSubmit

ContinuousSubmit: external/json-develop/CMakeFiles/ContinuousSubmit
ContinuousSubmit: external/json-develop/CMakeFiles/ContinuousSubmit.dir/build.make

.PHONY : ContinuousSubmit

# Rule to build all files generated by this target.
external/json-develop/CMakeFiles/ContinuousSubmit.dir/build: ContinuousSubmit

.PHONY : external/json-develop/CMakeFiles/ContinuousSubmit.dir/build

external/json-develop/CMakeFiles/ContinuousSubmit.dir/clean:
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop && $(CMAKE_COMMAND) -P CMakeFiles\ContinuousSubmit.dir\cmake_clean.cmake
.PHONY : external/json-develop/CMakeFiles/ContinuousSubmit.dir/clean

external/json-develop/CMakeFiles/ContinuousSubmit.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\micha\CLionProjects\NDegreesOfWikipedia C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop\CMakeFiles\ContinuousSubmit.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : external/json-develop/CMakeFiles/ContinuousSubmit.dir/depend

