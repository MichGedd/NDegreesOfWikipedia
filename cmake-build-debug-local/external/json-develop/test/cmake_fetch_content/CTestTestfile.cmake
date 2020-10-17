# CMake generated Testfile for 
# Source directory: C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_fetch_content
# Build directory: C:/Users/micha/CLionProjects/NDegreesOfWikipedia/cmake-build-debug-local/external/json-develop/test/cmake_fetch_content
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_fetch_content_configure "C:/Program Files/JetBrains/CLion 2020.2.1/bin/cmake/win/bin/cmake.exe" "-G" "MinGW Makefiles" "-DCMAKE_CXX_COMPILER=C:/Program Files/mingw-w64/x86_64-8.1.0-posix-seh-rt_v6-rev0/mingw64/bin/g++.exe" "-Dnlohmann_json_source=C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop" "C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_fetch_content/project")
set_tests_properties(cmake_fetch_content_configure PROPERTIES  FIXTURES_SETUP "cmake_fetch_content" LABELS "git_required" _BACKTRACE_TRIPLES "C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_fetch_content/CMakeLists.txt;2;add_test;C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_fetch_content/CMakeLists.txt;0;")
add_test(cmake_fetch_content_build "C:/Program Files/JetBrains/CLion 2020.2.1/bin/cmake/win/bin/cmake.exe" "--build" ".")
set_tests_properties(cmake_fetch_content_build PROPERTIES  FIXTURES_REQUIRED "cmake_fetch_content" LABELS "git_required" _BACKTRACE_TRIPLES "C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_fetch_content/CMakeLists.txt;9;add_test;C:/Users/micha/CLionProjects/NDegreesOfWikipedia/external/json-develop/test/cmake_fetch_content/CMakeLists.txt;0;")
