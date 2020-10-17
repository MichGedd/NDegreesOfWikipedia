# CMake generated Testfile for 
# Source directory: C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_import_minver
# Build directory: C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_import_minver
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_import_minver_configure "C:/Program Files/CMake/bin/cmake.exe" "-G" "MinGW Makefiles" "-A" "" "-DCMAKE_CXX_COMPILER=C:/Program Files/mingw-w64/x86_64-8.1.0-posix-seh-rt_v6-rev0/mingw64/bin/g++.exe" "-Dnlohmann_json_DIR=C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop" "C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_import_minver/project")
set_tests_properties(cmake_import_minver_configure PROPERTIES  FIXTURES_SETUP "cmake_import_minver" _BACKTRACE_TRIPLES "C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_import_minver/CMakeLists.txt;1;add_test;C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_import_minver/CMakeLists.txt;0;")
add_test(cmake_import_minver_build "C:/Program Files/CMake/bin/cmake.exe" "--build" ".")
set_tests_properties(cmake_import_minver_build PROPERTIES  FIXTURES_REQUIRED "cmake_import_minver" _BACKTRACE_TRIPLES "C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_import_minver/CMakeLists.txt;9;add_test;C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_import_minver/CMakeLists.txt;0;")
