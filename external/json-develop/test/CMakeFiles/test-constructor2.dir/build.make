# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop

# Include any dependencies generated for this target.
include test/CMakeFiles/test-constructor2.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test-constructor2.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test-constructor2.dir/flags.make

test/CMakeFiles/test-constructor2.dir/src/unit-constructor2.cpp.obj: test/CMakeFiles/test-constructor2.dir/flags.make
test/CMakeFiles/test-constructor2.dir/src/unit-constructor2.cpp.obj: test/CMakeFiles/test-constructor2.dir/includes_CXX.rsp
test/CMakeFiles/test-constructor2.dir/src/unit-constructor2.cpp.obj: test/src/unit-constructor2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test-constructor2.dir/src/unit-constructor2.cpp.obj"
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\test-constructor2.dir\src\unit-constructor2.cpp.obj -c C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test\src\unit-constructor2.cpp

test/CMakeFiles/test-constructor2.dir/src/unit-constructor2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-constructor2.dir/src/unit-constructor2.cpp.i"
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test\src\unit-constructor2.cpp > CMakeFiles\test-constructor2.dir\src\unit-constructor2.cpp.i

test/CMakeFiles/test-constructor2.dir/src/unit-constructor2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-constructor2.dir/src/unit-constructor2.cpp.s"
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test\src\unit-constructor2.cpp -o CMakeFiles\test-constructor2.dir\src\unit-constructor2.cpp.s

# Object files for target test-constructor2
test__constructor2_OBJECTS = \
"CMakeFiles/test-constructor2.dir/src/unit-constructor2.cpp.obj"

# External object files for target test-constructor2
test__constructor2_EXTERNAL_OBJECTS = \
"C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/CMakeFiles/doctest_main.dir/src/unit.cpp.obj"

test/test-constructor2.exe: test/CMakeFiles/test-constructor2.dir/src/unit-constructor2.cpp.obj
test/test-constructor2.exe: test/CMakeFiles/doctest_main.dir/src/unit.cpp.obj
test/test-constructor2.exe: test/CMakeFiles/test-constructor2.dir/build.make
test/test-constructor2.exe: test/CMakeFiles/test-constructor2.dir/linklibs.rsp
test/test-constructor2.exe: test/CMakeFiles/test-constructor2.dir/objects1.rsp
test/test-constructor2.exe: test/CMakeFiles/test-constructor2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-constructor2.exe"
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\test-constructor2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test-constructor2.dir/build: test/test-constructor2.exe

.PHONY : test/CMakeFiles/test-constructor2.dir/build

test/CMakeFiles/test-constructor2.dir/clean:
	cd /d C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test && $(CMAKE_COMMAND) -P CMakeFiles\test-constructor2.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/test-constructor2.dir/clean

test/CMakeFiles/test-constructor2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test C:\Users\micha\CLionProjects\NDegreesOfWikipedia\external\json-develop\test\CMakeFiles\test-constructor2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test-constructor2.dir/depend

