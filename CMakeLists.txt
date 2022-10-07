cmake_minimum_required(VERSION 3.13)
cmake_policy(SET CMP0076 NEW)

project(OpenCAEPoro CXX)
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
include(version_from_git)

add_subdirectory(external)
add_subdirectory(src)

if(ENABLE_TEST_UNIT OR ENABLE_TEST_BENCHMARK)
  include(CTest)
  add_subdirectory(tests)
endif()
