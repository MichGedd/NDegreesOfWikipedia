cmake_minimum_required(VERSION 3.17)
project(NDegreesOfWikipedia)

set(CMAKE_CXX_STANDARD 20)

set(CURL_LIBRARY ${CMAKE_SOURCE_DIR}/external/curl-master/lib)
set(CURL_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/external/curl-master/include)
set(nlohmann_json_DIR "${CMAKE_SOURCE_DIR}/external/json-develop")
set(JSON_BuildTests OFF CACHE INTERNAL "")

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

find_package(CURL)
include_directories(${CURL_INCLUDE_DIRS})
link_directories(${CURL_LIBRARIES})

add_subdirectory(external/json-develop)

set(SOURCE_FILES
        "${CMAKE_SOURCE_DIR}/src/main.cpp"
        "${CMAKE_SOURCE_DIR}/src/WebCrawler.cpp"
        "${CMAKE_SOURCE_DIR}/src/WebCrawlerManager.cpp"
        "${CMAKE_SOURCE_DIR}/src/Graph.cpp")

add_executable(NDegreesOfWikipedia ${SOURCE_FILES})
include_directories(NDegreesOfWikipedia include)

target_link_libraries(NDegreesOfWikipedia curl)
target_link_libraries(NDegreesOfWikipedia nlohmann_json::nlohmann_json)
target_link_libraries(NDegreesOfWikipedia Threads::Threads)
