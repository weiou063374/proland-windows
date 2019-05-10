# - Try to find glew
#
#  glew_FOUND - system has glew
#  glew_INCLUDE_DIRS - the glew include directories
#  glew_LIBRARIES - link these to use glew

FIND_PATH(
  glew_INCLUDE_DIRS
  NAMES GL/glew.h
  PATHS include
)

FIND_LIBRARY(
  glew_LIBRARIES
  NAMES glew32 glew
  PATHS lib
)

IF(glew_INCLUDE_DIRS AND glew_LIBRARIES)
  SET(glew_FOUND TRUE)
ENDIF(glew_INCLUDE_DIRS AND glew_LIBRARIES)

IF(glew_FOUND)
   IF(NOT glew_FIND_QUIETLY)
      MESSAGE(STATUS "Found glew: ${glew_LIBRARIES}")
   ENDIF(NOT glew_FIND_QUIETLY)
ELSE(glew_FOUND)
message(STATUS "glew NOT found")
   IF(glew_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find glew")
   ENDIF(glew_FIND_REQUIRED)
ENDIF(glew_FOUND)
