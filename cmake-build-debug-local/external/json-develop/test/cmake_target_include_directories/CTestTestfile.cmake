# CMake generated Testfile for 
# Source directory: C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_target_include_directories
# Build directory: C:/Users/micha/CLionProjects/NDegreesOfWikipedia/cmake-build-debug-local/external/json-develop/test/cmake_target_include_directories
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_target_include_directories_configure "C:/Program Files/JetBrains/CLion 2020.2.1/bin/cmake/win/bin/cmake.exe" "-G" "MinGW Makefiles" "-DCMAKE_CXX_COMPILER=C:/Program Files/mingw-w64/x86_64-8.1.0-posix-seh-rt_v6-rev0/mingw64/bin/g++.exe" "-Dnlohmann_json_source=C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop" "C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_target_include_directories/project")
set_tests_properties(cmake_target_include_directories_configure PROPERTIES  FIXTURES_SETUP "cmake_target_include_directories" _BACKTRACE_TRIPLES "C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_target_include_directories/CMakeLists.txt;1;add_test;C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_target_include_directories/CMakeLists.txt;0;")
add_test(cmake_target_include_directories_build "C:/Program Files/JetBrains/CLion 2020.2.1/bin/cmake/win/bin/cmake.exe" "--build" ".")
set_tests_properties(cmake_target_include_directories_build PROPERTIES  FIXTURES_REQUIRED "cmake_target_include_directories" _BACKTRACE_TRIPLES "C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_target_include_directories/CMakeLists.txt;8;add_test;C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_target_include_directories/CMakeLists.txt;0;")
