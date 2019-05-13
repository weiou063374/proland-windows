# Install script for directory: F:/github/new_proland_cmake/Proland_dev

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("F:/github/new_proland_cmake/Proland_dev/lib/core/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/terrain/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/atmo/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/ocean/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/forest/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/river/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/graph/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/edit/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/libraries/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/core/examples/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/terrain/examples/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/atmo/examples/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/ocean/examples/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/forest/examples/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/graph/examples/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/river/examples/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/edit/examples/cmake_install.cmake")
  include("F:/github/new_proland_cmake/Proland_dev/lib/demo/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "F:/github/new_proland_cmake/Proland_dev/lib/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
