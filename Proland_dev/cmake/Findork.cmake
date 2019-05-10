# - Try to find ork
#
#  ork_FOUND - system has ork
#  ork_INCLUDE_DIRS - the ork include directories
#  ork_LIBRARIES - link these to use ork
unset(ork_INCLUDE_DIRS CACHE)
FIND_PATH(
  ork_INCLUDE_DIRS
  NAMES ork
  PATHS include
)
unset(ork_LIBRARIES CACHE)
FIND_LIBRARY(
  ork_LIBRARIES
  NAMES ork
  PATHS lib
)

IF(ork_INCLUDE_DIRS AND ork_LIBRARIES)
  SET(ork_FOUND TRUE)
ENDIF(ork_INCLUDE_DIRS AND ork_LIBRARIES)

IF(ork_FOUND)
   IF(NOT ork_FIND_QUIETLY)
      MESSAGE(STATUS "Found ork--: ${ork_LIBRARIES}")
   ENDIF(NOT ork_FIND_QUIETLY)
ELSE(ork_FOUND)
message(STATUS "ork NOT found")
   IF(ork_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find ork")
   ENDIF(ork_FIND_REQUIRED)
ENDIF(ork_FOUND)
