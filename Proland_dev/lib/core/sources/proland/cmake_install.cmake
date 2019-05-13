# Install script for directory: F:/github/new_proland_cmake/Proland_dev/core/sources/proland

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/math" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/math/color.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/math/geometry.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/math/noise.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/math/seg2.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/particles" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/particles/LifeCycleParticleLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/particles/ParticleLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/particles/ParticleProducer.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/particles/ParticleStorage.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/particles/RandomParticleLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/particles/WorldParticleLayer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/particles/screen" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/particles/screen/ParticleGrid.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/particles/screen/ScreenParticleLayer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/particles/terrain" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/particles/terrain/FlowTile.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/particles/terrain/TerrainParticleLayer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/producer" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/producer/CPUTileStorage.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/producer/GPUTileStorage.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/producer/ObjectTileStorage.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/producer/TileCache.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/producer/TileLayer.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/producer/TileProducer.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/producer/TileStorage.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/terrain" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/CylindricalDeformation.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/Deformation.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/DrawTerrainTask.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/ReadbackManager.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/SphericalDeformation.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/TerrainNode.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/TerrainQuad.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/TileSampler.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/TileSamplerZ.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/UpdateTerrainTask.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/terrain/UpdateTileSamplersTask.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/ui" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/ui/BasicViewHandler.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/ui/EventRecorder.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/ui/MousePositionHandler.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/ui/SceneVisitor.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/ui/twbar" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/ui/twbar/DrawTweakBarTask.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/ui/twbar/TweakBarHandler.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/ui/twbar/TweakBarManager.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/ui/twbar/TweakResource.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/ui/twbar/TweakSceneGraph.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/ui/twbar/TweakViewHandler.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/proland/util" TYPE FILE FILES
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/util/CylinderViewController.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/util/PlanetViewController.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/util/TerrainViewController.h"
    "F:/github/new_proland_cmake/Proland_dev/core/sources/proland/util/mfs.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/Proland_dev/lib/Debug/proland-core.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/Proland_dev/lib/Release/proland-core.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/Proland_dev/lib/MinSizeRel/proland-core.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/Proland_dev/lib/RelWithDebInfo/proland-core.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "F:/github/new_proland_cmake/Proland_dev/lib/proland-core.pc")
endif()

