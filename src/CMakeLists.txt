add_executable(CAE+)

add_subdirectory(lib)

target_sources(CAE+ PRIVATE Main.cpp)
target_link_libraries(CAE+ PRIVATE ocp::OpenCAEPlus)
