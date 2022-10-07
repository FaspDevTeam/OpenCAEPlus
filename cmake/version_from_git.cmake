execute_process(
  COMMAND ${GIT_EXECUTABLE} "--git-dir=${CMAKE_CURRENT_SOURCE_DIR}/.git"
          describe --tags --abbrev=0
  OUTPUT_VARIABLE GIT_TAG
  OUTPUT_STRIP_TRAILING_WHITESPACE)
string(REGEX REPLACE "^([^.]+)\\.([^.]+)\\.(.+)$" "\\1" VERSION_MAJOR
                     "${GIT_TAG}")
string(REGEX REPLACE "^([^.]+)\\.([^.]+)\\.(.+)$" "\\2" VERSION_MINOR
                     "${GIT_TAG}")
string(REGEX REPLACE "^([^.]+)\\.([^.]+)\\.(.+)$" "\\3" VERSION_PATCH
                     "${GIT_TAG}")

message(STATUS "-------- The current version is ----------------")
message(STATUS ${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH})
message(STATUS "------------------------------------------------")
