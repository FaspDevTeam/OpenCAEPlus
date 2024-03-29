include(FetchContent)
# FetchContent_MakeAvailable was not added until CMake 3.14; use our shim
if(${CMAKE_VERSION} VERSION_LESS 3.14)
  include(cmake/add_FetchContent_MakeAvailable.cmake)
endif()

find_package(FASP)
if(FASP_FOUND)
  include_directories(${FASP_INCLUDE_DIRS})
  add_definitions(-D__SOLVER_FASP__)
  add_library(fasp STATIC IMPORTED GLOBAL)
  set_target_properties(
    fasp PROPERTIES IMPORTED_LOCATION ${FASP_LIBRARIES}
                    INTERFACE_INCLUDE_DIRECTORIES ${FASP_INCLUDE_DIRS})
else(FASP_FOUND)
  message("-- ERROR: FASP was requested but not found!")
  FetchContent_Declare(fasp
                       GIT_REPOSITORY git@github.com:FaspDevTeam/faspsolver.git)
  FetchContent_MakeAvailable(fasp)
endif(FASP_FOUND)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG release-1.12.1)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt
    ON
    CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)
