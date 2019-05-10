cmake_minimum_required(VERSION 2.6)

set(EXENAME core-helloworld)

#external library includes
include_directories("${PROJECT_SOURCE_DIR}/libraries")
message(STATUS "External librabry dir: " ${PROJECT_SOURCE_DIR}/libraries)
   
#external librabry link dir
#link_directories(${PROJECT_SOURCE_DIR}/libraries)
     
#mainline include dirs
include_directories(${PROLAND_CORE_SOURCES})

# Sources
file(GLOB SOURCE_FILES *.cpp)

#list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
find_package(proland-core REQUIRED)

#add_definitions("-DORK_API=")
add_definitions("-DPROLAND_API=__declspec(dllimport)" "-fPIC")
add_definitions("-DORK_API=__declspec(dllimport)" "-DTIXML_USE_STL" "-fPIC")
# Assign output directory for this example
set(EXAMPLE_EXE_PATH "/examples/core/helloworld")
set(EXECUTABLE_OUTPUT_PATH "${EXECUTABLE_OUTPUT_PATH}${EXAMPLE_EXE_PATH}")
message(STATUS "Setting example output dir: " ${EXECUTABLE_OUTPUT_PATH})
message(STATUS "PROLAND_3RDPARTY_LIBRARIES: " ${PROLAND_3RDPARTY_LIBRARIES})
add_executable(${EXENAME} ${SOURCE_FILES})
#target_link_libraries(${EXENAME} -Wl,--whole-archive proland_core ork -Wl,--no-whole-archive pthread GL GLU GLEW glut glfw3 rt dl Xrandr Xinerama Xxf86vm Xext Xcursor Xrender Xfixes X11 AntTweakBar stb_image tinyxml)
target_link_libraries(${EXENAME} -Wl,--whole-archive ${proland-core_LIBRARIES}  ${PROLAND_3RDPARTY_LIBRARIES})
# Copy all files in source tree, except this CMakeLists.txt
add_custom_command(TARGET ${EXENAME} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR} ${EXECUTABLE_OUTPUT_PATH})
add_custom_command(TARGET ${EXENAME} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/../common ${EXECUTABLE_OUTPUT_PATH})
add_custom_command(TARGET ${EXENAME} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E remove ${EXECUTABLE_OUTPUT_PATH}/CMakeLists.txt)

