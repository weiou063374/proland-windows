# - Try to find anttweakbar
#
#  anttweakbar_FOUND - system has anttweakbar
#  anttweakbar_INCLUDE_DIRS - the anttweakbar include directories
#  anttweakbar_LIBRARIES - link these to use anttweakbar

FIND_PATH(
  anttweakbar_INCLUDE_DIRS
  NAMES AntTweakBar.h
  PATHS include
)

FIND_LIBRARY(
  anttweakbar_LIBRARIES
  NAMES AntTweakBar anttweakbar
  PATHS lib
)

IF(anttweakbar_INCLUDE_DIRS AND anttweakbar_LIBRARIES)
  SET(anttweakbar_FOUND TRUE)
ENDIF(anttweakbar_INCLUDE_DIRS AND anttweakbar_LIBRARIES)

IF(anttweakbar_FOUND)
   IF(NOT anttweakbar_FIND_QUIETLY)
      MESSAGE(STATUS "Found anttweakbar: ${anttweakbar_LIBRARIES}")
   ENDIF(NOT anttweakbar_FIND_QUIETLY)
ELSE(anttweakbar_FOUND)
message(STATUS "anttweakbar NOT found")
   IF(anttweakbar_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find anttweakbar")
   ENDIF(anttweakbar_FIND_REQUIRED)
ENDIF(anttweakbar_FOUND)
