
add_library(OpenCAEPlus)
add_library(ocp::OpenCAEPlus ALIAS OpenCAEPlus)

target_sources(OpenCAEPlus PRIVATE OpenCAEPlus.cpp)

add_subdirectory(include)
