# - Try to find stb_image
#
#  stb_image_FOUND - system has stb_image
#  stb_image_INCLUDE_DIRS - the stb_image include directories
#  stb_image_LIBRARIES - link these to use stb_image

FIND_PATH(
   stb_image_INCLUDE_DIRS
   NAMES stb_image.h
   PATHS libraries/stbi
)

FIND_LIBRARY(
  stb_image_LIBRARIES
  NAMES stb_image
  PATHS lib
)

IF(stb_image_INCLUDE_DIRS AND stb_image_LIBRARIES)
  SET(stb_image_FOUND TRUE)
ENDIF(stb_image_INCLUDE_DIRS AND stb_image_LIBRARIES)

IF(stb_image_FOUND)
   IF(NOT stb_image_FIND_QUIETLY)
      MESSAGE(STATUS "Found stb_image: ${stb_image_LIBRARIES}")
   ENDIF(NOT stb_image_FIND_QUIETLY)
ELSE(stb_image_FOUND)
message(STATUS "stb_image NOT found")
   IF(stb_image_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find stb_image")
   ENDIF(stb_image_FIND_REQUIRED)
ENDIF(stb_image_FOUND)
