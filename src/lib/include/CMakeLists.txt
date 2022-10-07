# external headers, which will be installed for users
target_sources(OpenCAEPlus PUBLIC public/OpenCAEPlus/OpenCAEPlus.hpp)
#internal headers, only used within the lib
# target_sources(OpenCAEPlus PRIVATE private/internal.hpp)

target_include_directories(
  OpenCAEPlus
  PUBLIC
  public
  PRIVATE
  private)

target_compile_definitions(
  OpenCAEPlus
  PRIVATE VERSION_MAJOR="${VERSION_MAJOR}" VERSION_MINOR="${VERSION_MINOR}"
          VERSION_PATCH="${VERSION_PATCH}")
