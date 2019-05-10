# - Try to find tiff
#
#  tiff_FOUND - system has tiff
#  tiff_INCLUDE_DIRS - the tiff include directories
#  tiff_LIBRARIES - link these to use tiff

FIND_PATH(
  tiff_INCLUDE_DIRS
  NAMES tiff.h
  PATHS include
)

FIND_LIBRARY(
  tiff_LIBRARIES
  NAMES libtiff3 tiff
  PATHS lib
)

IF(tiff_INCLUDE_DIRS AND tiff_LIBRARIES)
  SET(tiff_FOUND TRUE)
ENDIF(tiff_INCLUDE_DIRS AND tiff_LIBRARIES)

IF(tiff_FOUND)
   IF(NOT tiff_FIND_QUIETLY)
      MESSAGE(STATUS "Found tiff: ${tiff_LIBRARIES}")
   ENDIF(NOT tiff_FIND_QUIETLY)
ELSE(tiff_FOUND)
message(STATUS "tiff NOT found")
   IF(tiff_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find tiff")
   ENDIF(tiff_FIND_REQUIRED)
ENDIF(tiff_FOUND)
