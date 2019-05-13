# Install script for directory: F:/github/new_proland_cmake/Proland_dev/graph/sources/proland

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Proland")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/dem" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/dem/ElevationCurveData.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/dem/ElevationGraphLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/dem/ElevationMargin.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/dem/RoadElevationLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/dem/WaterElevationLayer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/graph" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/Area.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/BasicCurvePart.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/BasicGraph.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/ComposedMargin.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/Curve.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/CurvePart.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/FileReader.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/FileWriter.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/Graph.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/GraphListener.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/LazyArea.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/LazyCurve.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/LazyGraph.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/LazyNode.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/LineCurvePart.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/Margin.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/Node.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/graph/producer" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/producer/CurveData.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/producer/CurveDataFactory.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/producer/GetCurveDatasTask.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/producer/GraphLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/producer/GraphProducer.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/graph/producer/Tesselator.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/ortho" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/ortho/FieldsOrthoLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/ortho/ForestOrthoLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/ortho/LineOrthoLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/ortho/MaskOrthoLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/ortho/OrthoMargin.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/ortho/RoadOrthoLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/graph/sources/proland/ortho/WaterOrthoLayer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/Proland_dev/lib/Debug/proland-graph.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/Proland_dev/lib/Release/proland-graph.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/Proland_dev/lib/MinSizeRel/proland-graph.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/Proland_dev/lib/RelWithDebInfo/proland-graph.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "F:/github/new_proland_cmake/Proland_dev/lib/proland-graph.pc")
endif()

