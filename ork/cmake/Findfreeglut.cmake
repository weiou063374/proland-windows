# - Try to find freeglut
#
#  freeglut_FOUND - system has freeglut
#  freeglut_INCLUDE_DIRS - the freeglut include directories
#  freeglut_LIBRARIES - link these to use freeglut

FIND_PATH(
  freeglut_INCLUDE_DIRS
  NAMES GL/freeglut.h
  PATHS include
)

FIND_LIBRARY(
  freeglut_LIBRARIES
  NAMES freeglut32 freeglut
  PATHS lib
)

IF(freeglut_INCLUDE_DIRS AND freeglut_LIBRARIES)
  SET(freeglut_FOUND TRUE)
ENDIF(freeglut_INCLUDE_DIRS AND freeglut_LIBRARIES)

IF(freeglut_FOUND)
   IF(NOT freeglut_FIND_QUIETLY)
      MESSAGE(STATUS "Found freeglut: ${freeglut_LIBRARIES}")
   ENDIF(NOT freeglut_FIND_QUIETLY)
ELSE(freeglut_FOUND)
message(STATUS "freeglut NOT found")
   IF(freeglut_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find freeglut")
   ENDIF(freeglut_FIND_REQUIRED)
ENDIF(freeglut_FOUND)
