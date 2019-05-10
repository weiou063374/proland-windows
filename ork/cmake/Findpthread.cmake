# - Try to find pthread
#
#  pthread_FOUND - system has pthread
#  pthread_INCLUDE_DIRS - the pthread include directories
#  pthread_LIBRARIES - link these to use pthread

FIND_PATH(
  pthread_INCLUDE_DIRS
  NAMES pthread.h
  PATHS include
)

FIND_LIBRARY(
  pthread_LIBRARIES
  NAMES pthreadVCE2 pthread
  PATHS lib
)

IF(pthread_INCLUDE_DIRS AND pthread_LIBRARIES)
  SET(pthread_FOUND TRUE)
ENDIF(pthread_INCLUDE_DIRS AND pthread_LIBRARIES)

IF(pthread_FOUND)
   IF(NOT pthread_FIND_QUIETLY)
      MESSAGE(STATUS "Found pthread: ${pthread_LIBRARIES}")
   ENDIF(NOT pthread_FIND_QUIETLY)
ELSE(pthread_FOUND)
message(STATUS "pthread NOT found")
   IF(pthread_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find pthread")
   ENDIF(pthread_FIND_REQUIRED)
ENDIF(pthread_FOUND)
