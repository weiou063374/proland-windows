set(LIBNAME "proland-core")

# Sources
message(STATUS "****    Proland core    ****")
message(STATUS "PROJECT_SOURCE_DIR: " ${PROJECT_SOURCE_DIR})
set(proland-core_SOURCES "${PROJECT_SOURCE_DIR}/core/sources" CACHE INTERNAL "")
message(STATUS "proland-core_SOURCES: ${proland-core_SOURCES}")
include_directories(${proland-core_SOURCES} ${PROJECT_SOURCE_DIR}/libraries)

file(GLOB SOURCE_FILES *.cpp */*.cpp ui/twbar/*.cpp particles/screen/*.cpp particles/terrain/*.cpp)

# Libraries
set(LIBS ${PROLAND_3RDPARTY_LIBRARIES})
if(UNIX)
	set(LIBS ${LIBS} rt)
endif(UNIX)

# Static or shared?
set(LIBTYPE STATIC)
if(BUILD_SHARED)
	set(LIBTYPE SHARED)
endif(BUILD_SHARED)

# Create a static library
add_library(${LIBNAME} ${LIBTYPE} ${SOURCE_FILES})
target_link_libraries(${LIBNAME} ${LIBS})

# Adds SO Version and subversion. To be added to ensure ABI/API compatibility.
#SET_TARGET_PROPERTIES(${LIBNAME} PROPERTIES SOVERSION ${ORK_VERSION_MAJOR} VERSION ${ORK_VERSION})

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
message(STATUS "Output path for " ${LIBNAME} " is " ${LIBRARY_OUTPUT_PATH})
link_directories(${PROJECT_SOURCE_DIR}/lib)

# Install headers
FOREACH(subdir math particles particles/screen particles/terrain producer terrain ui ui/twbar util)
  FILE(GLOB include-files ${subdir}/*.h)
  INSTALL(FILES ${include-files} DESTINATION include/proland/${subdir})
ENDFOREACH(subdir)

# Install library
INSTALL(TARGETS ${LIBNAME} LIBRARY DESTINATION ${LIB_INSTALL_DIR} ARCHIVE DESTINATION ${LIB_INSTALL_DIR})

SET(ORK_CFLAGS "-DORK_API= -DTIXML_USE_STL")
SET(PROLAND_CFLAGS "-DPROLAND_API= -DUSE_SHARED_PTR")
add_definitions("-DPROLAND_API=__declspec(dllexport)" "-fPIC")
add_definitions("-DORK_API=__declspec(dllimport)" "-DTIXML_USE_STL" "-fPIC")

CONFIGURE_FILE(proland-core.pc.in ${PROJECT_BINARY_DIR}/proland-core.pc @ONLY)
INSTALL(FILES ${PROJECT_BINARY_DIR}/proland-core.pc DESTINATION ${LIB_INSTALL_DIR}/pkgconfig)
