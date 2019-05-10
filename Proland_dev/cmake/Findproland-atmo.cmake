# - Try to find proland-atmo
#
#  proland-atmo_FOUND - system has proland-atmo
#  proland-atmo_INCLUDE_DIRS - the proland-atmo include directories
#  proland-atmo_LIBRARIES - link these to use proland-atmo
unset( proland-atmo_INCLUDE_DIRS CACHE)

unset(proland-atmo_LIBRARIES CACHE)

FIND_PATH(
  proland-atmo_INCLUDE_DIRS
  NAMES proland
  PATHS  PATHS "F:/github/new_proland_cmake/Proland_dev/include/proland_include"
)

FIND_LIBRARY(
  proland-atmo_LIBRARIES
  NAMES proland-atmo
  PATHS "F:/github/new_proland_cmake/Proland_dev/lib"
)

IF(proland-atmo_INCLUDE_DIRS AND proland-atmo_LIBRARIES)
  SET(proland-atmo_FOUND TRUE)
ENDIF(proland-atmo_INCLUDE_DIRS AND proland-atmo_LIBRARIES)

IF(proland-atmo_FOUND)
   IF(NOT proland-atmo_FIND_QUIETLY)
      MESSAGE(STATUS "Found proland-atmo----: ${proland-atmo_LIBRARIES}")
   ENDIF(NOT proland-atmo_FIND_QUIETLY)
ELSE(proland-atmo_FOUND)
message(STATUS "proland-atmo NOT found")
   IF(NOT proland-atmo_INCLUDE_DIRS)
      MESSAGE(FATAL_ERROR "Could not find include dir---proland-atmo")
   ENDIF(proland-atmo_INCLUDE_DIRS)
    IF(NOT proland-atmo_LIBRARIES)
      MESSAGE(FATAL_ERROR "Could not find lib---proland-atmo")
   ENDIF(proland-atmo_LIBRARIES)
ENDIF(proland-atmo_FOUND)
