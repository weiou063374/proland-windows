# - Try to find proland-core
#
#  proland-core_FOUND - system has proland-core
#  proland-core_INCLUDE_DIRS - the proland-core include directories
#  proland-core_LIBRARIES - link these to use proland-core

unset(proland-core_INCLUDE_DIRS CACHE)
unset(proland-core_LIBRARIES CACHE)
FIND_PATH(
  proland-core_INCLUDE_DIRS
  NAMES proland
  PATHS "F:/github/new_proland_cmake/Proland_dev/include/proland_include"
)

FIND_LIBRARY(
  proland-core_LIBRARIES
  NAMES proland-core
  PATHS "F:/github/new_proland_cmake/Proland_dev/lib"
)

IF(proland-core_INCLUDE_DIRS AND proland-core_LIBRARIES)
  SET(proland-core_FOUND TRUE)
ENDIF(proland-core_INCLUDE_DIRS AND proland-core_LIBRARIES)

IF(proland-core_FOUND)
   IF(NOT proland-core_FIND_QUIETLY)
      MESSAGE(STATUS "Found proland-core----: ${proland-core_LIBRARIES}")
   ENDIF(NOT proland-core_FIND_QUIETLY)
ELSE(proland-core_FOUND)
message(STATUS "proland-core NOT found")
   IF(NOT proland-core_INCLUDE_DIRS)
     # MESSAGE(FATAL_ERROR "Could not find include dir---proland-core")
   ENDIF(proland-core_INCLUDE_DIRS)
    IF(NOT proland-core_LIBRARIES)
      MESSAGE(FATAL_ERROR "Could not find lib---proland-core")
   ENDIF(proland-core_LIBRARIES)
ENDIF(proland-core_FOUND)
