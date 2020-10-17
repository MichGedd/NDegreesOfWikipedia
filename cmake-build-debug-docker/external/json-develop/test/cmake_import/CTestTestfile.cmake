# CMake generated Testfile for 
# Source directory: /home/debug/CLion/external/json-develop/test/cmake_import
# Build directory: /home/debug/CLion/cmake-build-debug-docker/external/json-develop/test/cmake_import
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_import_configure "/usr/bin/cmake" "-G" "Unix Makefiles" "-A" "" "-DCMAKE_CXX_COMPILER=/usr/bin/g++" "-Dnlohmann_json_DIR=/home/debug/CLion/cmake-build-debug-docker/external/json-develop" "/home/debug/CLion/external/json-develop/test/cmake_import/project")
set_tests_properties(cmake_import_configure PROPERTIES  FIXTURES_SETUP "cmake_import" _BACKTRACE_TRIPLES "/home/debug/CLion/external/json-develop/test/cmake_import/CMakeLists.txt;1;add_test;/home/debug/CLion/external/json-develop/test/cmake_import/CMakeLists.txt;0;")
add_test(cmake_import_build "/usr/bin/cmake" "--build" ".")
set_tests_properties(cmake_import_build PROPERTIES  FIXTURES_REQUIRED "cmake_import" _BACKTRACE_TRIPLES "/home/debug/CLion/external/json-develop/test/cmake_import/CMakeLists.txt;9;add_test;/home/debug/CLion/external/json-develop/test/cmake_import/CMakeLists.txt;0;")
