project(Ork CXX C)
cmake_minimum_required(VERSION 2.6)
cmake_policy(VERSION 2.6)

SET(ORK_VERSION_MAJOR 3)
SET(ORK_VERSION_MINOR 2)
SET(ORK_VERSION "${ORK_VERSION_MAJOR}.${ORK_VERSION_MINOR}")

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
find_package(pthread REQUIRED)

set(LIB_INSTALL_DIR "lib" CACHE STRING "Library directory name (lib/lib32/lib64)" )

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
add_definitions("-DORK_API=__declspec(dllexport)" "-DTIXML_USE_STL" "-fPIC")

option(BUILD_SHARED      "Build shared library instead of static"   OFF)
option(BUILD_EXAMPLES    "Build examples"                           ON )
option(BUILD_TESTS       "Build tests"                              ON )
option(USE_SHARED_PTR	 "Use std::shared_ptr"			    ON )
option(USE_FREEGLUT	 "Use freeglut"				    ON )

if(USE_SHARED_PTR)
	add_definitions("-DUSE_SHARED_PTR") 
endif(USE_SHARED_PTR)
if(USE_FREEGLUT)
	add_definitions("-DUSEFREEGLUT")
endif(USE_FREEGLUT)


# Sub dirs
add_subdirectory(libraries)
add_subdirectory(ork)

if(BUILD_EXAMPLES)
	add_subdirectory(examples)
endif(BUILD_EXAMPLES)

if(BUILD_TESTS)
	add_subdirectory(test)
endif(BUILD_TESTS)
