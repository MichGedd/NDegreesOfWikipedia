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

# Include any dependencies generated for this target.
include external/json-develop/test/CMakeFiles/test-ordered_json.dir/depend.make

# Include the progress variables for this target.
include external/json-develop/test/CMakeFiles/test-ordered_json.dir/progress.make

# Include the compile flags for this target's objects.
include external/json-develop/test/CMakeFiles/test-ordered_json.dir/flags.make

external/json-develop/test/CMakeFiles/test-ordered_json.dir/src/unit-ordered_json.cpp.obj: external/json-develop/test/CMakeFiles/test-ordered_json.dir/flags.make
external/json-develop/test/CMakeFiles/test-ordered_json.dir/src/unit-ordered_json.cpp.obj: external/json-develop/test/CMakeFiles/test-ordered_json.dir/includes_CXX.rsp
external/json-develop/test/CMakeFiles/test-ordered_json.dir/src/unit-ordered_json.cpp.obj: ../external/json-develop/test/src/unit-ordered_json.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/json-develop/test/CMakeFiles/test-ordered_json.dir/src/unit-ordered_json.cpp.obj"
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\test-ordered_json.dir\src\unit-ordered_json.cpp.obj -c C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test\src\unit-ordered_json.cpp

external/json-develop/test/CMakeFiles/test-ordered_json.dir/src/unit-ordered_json.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-ordered_json.dir/src/unit-ordered_json.cpp.i"
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test\src\unit-ordered_json.cpp > CMakeFiles\test-ordered_json.dir\src\unit-ordered_json.cpp.i

external/json-develop/test/CMakeFiles/test-ordered_json.dir/src/unit-ordered_json.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-ordered_json.dir/src/unit-ordered_json.cpp.s"
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test\src\unit-ordered_json.cpp -o CMakeFiles\test-ordered_json.dir\src\unit-ordered_json.cpp.s

# Object files for target test-ordered_json
test__ordered_json_OBJECTS = \
"CMakeFiles/test-ordered_json.dir/src/unit-ordered_json.cpp.obj"

# External object files for target test-ordered_json
test__ordered_json_EXTERNAL_OBJECTS = \
"C:/Users/micha/CLionProjects/NDegreesOfWikipedia/cmake-build-debug-local/external/json-develop/test/CMakeFiles/doctest_main.dir/src/unit.cpp.obj"

external/json-develop/test/test-ordered_json.exe: external/json-develop/test/CMakeFiles/test-ordered_json.dir/src/unit-ordered_json.cpp.obj
external/json-develop/test/test-ordered_json.exe: external/json-develop/test/CMakeFiles/doctest_main.dir/src/unit.cpp.obj
external/json-develop/test/test-ordered_json.exe: external/json-develop/test/CMakeFiles/test-ordered_json.dir/build.make
external/json-develop/test/test-ordered_json.exe: external/json-develop/test/CMakeFiles/test-ordered_json.dir/linklibs.rsp
external/json-develop/test/test-ordered_json.exe: external/json-develop/test/CMakeFiles/test-ordered_json.dir/objects1.rsp
external/json-develop/test/test-ordered_json.exe: external/json-develop/test/CMakeFiles/test-ordered_json.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-ordered_json.exe"
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\test-ordered_json.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/json-develop/test/CMakeFiles/test-ordered_json.dir/build: external/json-develop/test/test-ordered_json.exe

.PHONY : external/json-develop/test/CMakeFiles/test-ordered_json.dir/build

external/json-develop/test/CMakeFiles/test-ordered_json.dir/clean:
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop\test && $(CMAKE_COMMAND) -P CMakeFiles\test-ordered_json.dir\cmake_clean.cmake
.PHONY : external/json-develop/test/CMakeFiles/test-ordered_json.dir/clean

external/json-develop/test/CMakeFiles/test-ordered_json.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\micha\CLionProjects\NDegreesOfWikipedia C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop\test C:\Users\micha\CLionProjects\NDegreesOfWikipedia\cmake-build-debug-local\external\json-develop\test\CMakeFiles\test-ordered_json.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : external/json-develop/test/CMakeFiles/test-ordered_json.dir/depend

