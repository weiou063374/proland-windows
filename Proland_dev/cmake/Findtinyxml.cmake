# - Try to find tinyxml
#
#  tinyxml_FOUND - system has tinyxml
#  tinyxml_INCLUDE_DIRS - the tinyxml include directories
#  tinyxml_LIBRARIES - link these to use tinyxml

FIND_PATH(
  tinyxml_INCLUDE_DIRS
  NAMES tinyxml.h
  PATHS libraries/tinyxml
)

FIND_LIBRARY(
  tinyxml_LIBRARIES
  NAMES tinyxml
  PATHS lib
)

IF(tinyxml_INCLUDE_DIRS AND tinyxml_LIBRARIES)
  SET(tinyxml_FOUND TRUE)
ENDIF(tinyxml_INCLUDE_DIRS AND tinyxml_LIBRARIES)

IF(tinyxml_FOUND)
   IF(NOT tinyxml_FIND_QUIETLY)
      MESSAGE(STATUS "Found tinyxml: ${tinyxml_LIBRARIES}")
   ENDIF(NOT tinyxml_FIND_QUIETLY)
ELSE(tinyxml_FOUND)
message(STATUS "tinyxml NOT found")
   IF(tinyxml_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find tinyxml")
   ENDIF(tinyxml_FIND_REQUIRED)
ENDIF(tinyxml_FOUND)
