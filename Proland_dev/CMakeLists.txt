project(Proland CXX C)
cmake_minimum_required(VERSION 2.6)
cmake_policy(VERSION 2.6)


SET(PROLAND_VERSION_MAJOR 4)
SET(PROLAND_VERSION_MINOR 0)
SET(PROLAND_VERSION "${PROLAND_VERSION_MAJOR}.${PROLAND_VERSION_MINOR}")

# Avoid source tree pollution
if(CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR)
	message(FATAL_ERROR "In-source builds are not permitted. Make a separate folder for building:\nmkdir build; cd build; cmake ..\nBefore that, remove the files already created:\nrm -rf CMakeCache.txt CMakeFiles")
endif(CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR)

# Add a sensible build type default and warning because empty means no optimization and no debug info.
if(NOT CMAKE_BUILD_TYPE)
	message("WARNING: CMAKE_BUILD_TYPE is not defined!\n         Defaulting to CMAKE_BUILD_TYPE=RelWithDebInfo. Use ccmake to set a proper value.")
	set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif(NOT CMAKE_BUILD_TYPE)

include_directories("${CMAKE_CURRENT_LIST_DIR}/include")
#LINK_DIRECTORIES("${PROJECT_SOURCE_DIR}/lib")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")

# Common deps
#find_package(PkgConfig)
find_package(ork REQUIRED)
find_package(anttweakbar REQUIRED)
find_package(pthread REQUIRED) 
find_package(tiff REQUIRED) 
find_package(tinyxml REQUIRED) 
find_package(stb_image REQUIRED) 

find_package(glew REQUIRED) # GLEW::GLEW 
#PKG_CHECK_MODULES(Glew glew REQUIRED)
include_directories(${glew_INCLUDE_DIRS})
link_directories(${glew_LIBRARIES})

#PKG_CHECK_MODULES(GLFW glfw3 REQUIRED)
find_package(glfw3 REQUIRED)
include_directories(${GLFW3_INCLUDE_PATH})
link_directories(${GLFW3_LIBRARY})

#find_package(GLUT)
find_package(freeglut)
find_package(OpenGL)

#PKG_CHECK_MODULES(ORK REQUIRED ork)
include_directories(${ork_INCLUDE_DIRS})
link_directories(${ork_LIBRARIES})
add_definitions(${ORK_CFLAGS})
message( STATUS "Found ork? " ${ork_FOUND})
message(STATUS "ork include_directories: " ${ORK_INCLUDE_DIRS})
message(STATUS "ork link_directories:    " ${ORK_LIBRARY_DIRS})
message(STATUS "ork add_definitions:     " ${ORK_CFLAGS})


 set(PROLAND_3RDPARTY_LIBRARIES "${ork_LIBRARIES}" "${pthread_LIBRARIES}" "${anttweakbar_LIBRARIES}" "${tiff_LIBRARIES}"
 "${stb_image_LIBRARIES}" "${tinyxml_LIBRARIES}" OpenGL::GL OpenGL::GLU "${glew_LIBRARIES}" "${GLFW3_LIBRARY}" "${freeglut_LIBRARIES}")
#find_package(GLUT)

set(LIB_INSTALL_DIR "lib" CACHE STRING "Library directory name (lib/lib32/lib64)" )

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
add_definitions("-DPROLAND_API=__declspec(dllexport)" "-fPIC")
add_definitions("-DORK_API=__declspec(dllimport)" "-DTIXML_USE_STL" "-fPIC")
option(BUILD_SHARED      "Build shared library instead of static"   OFF)
option(BUILD_EXAMPLES    "Build examples"                           ON )
#option(BUILD_TESTS       "Build tests"                              ON )

#General compiler options:
message(STATUS "CXX FLAGS: " ${CMAKE_CXX_FLAGS})

# Sub dirs
#add_subdirectory(libraries)
add_subdirectory(core)
add_subdirectory(terrain)
add_subdirectory(atmo)
add_subdirectory(ocean)
add_subdirectory(forest)
add_subdirectory(river)
add_subdirectory(graph)
add_subdirectory(edit)
add_subdirectory(libraries)
if(BUILD_EXAMPLES)
	add_subdirectory(core/examples)
    add_subdirectory(terrain/examples)
    add_subdirectory(atmo/examples)
    add_subdirectory(ocean/examples)
    add_subdirectory(forest/examples)
    add_subdirectory(graph/examples)
    add_subdirectory(river/examples)
    add_subdirectory(edit/examples)
endif(BUILD_EXAMPLES)

add_subdirectory(demo)

#if(BUILD_TESTS)
#	add_subdirectory(test)
#endif(BUILD_TESTS)
