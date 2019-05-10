# Install script for directory: F:/github/new_proland_cmake/ork/ork

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Ork")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ork/core" TYPE FILE FILES
    "F:/github/new_proland_cmake/ork/ork/core/Atomic.h"
    "F:/github/new_proland_cmake/ork/ork/core/Factory.h"
    "F:/github/new_proland_cmake/ork/ork/core/FileLogger.h"
    "F:/github/new_proland_cmake/ork/ork/core/GPUTimer.h"
    "F:/github/new_proland_cmake/ork/ork/core/Iterator.h"
    "F:/github/new_proland_cmake/ork/ork/core/Logger.h"
    "F:/github/new_proland_cmake/ork/ork/core/Object.h"
    "F:/github/new_proland_cmake/ork/ork/core/Timer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ork/math" TYPE FILE FILES
    "F:/github/new_proland_cmake/ork/ork/math/box2.h"
    "F:/github/new_proland_cmake/ork/ork/math/box3.h"
    "F:/github/new_proland_cmake/ork/ork/math/half.h"
    "F:/github/new_proland_cmake/ork/ork/math/mat2.h"
    "F:/github/new_proland_cmake/ork/ork/math/mat3.h"
    "F:/github/new_proland_cmake/ork/ork/math/mat4.h"
    "F:/github/new_proland_cmake/ork/ork/math/quat.h"
    "F:/github/new_proland_cmake/ork/ork/math/vec2.h"
    "F:/github/new_proland_cmake/ork/ork/math/vec3.h"
    "F:/github/new_proland_cmake/ork/ork/math/vec4.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ork/render" TYPE FILE FILES
    "F:/github/new_proland_cmake/ork/ork/render/AttributeBuffer.h"
    "F:/github/new_proland_cmake/ork/ork/render/Buffer.h"
    "F:/github/new_proland_cmake/ork/ork/render/CPUBuffer.h"
    "F:/github/new_proland_cmake/ork/ork/render/FrameBuffer.h"
    "F:/github/new_proland_cmake/ork/ork/render/GPUBuffer.h"
    "F:/github/new_proland_cmake/ork/ork/render/Mesh.h"
    "F:/github/new_proland_cmake/ork/ork/render/MeshBuffers.h"
    "F:/github/new_proland_cmake/ork/ork/render/Module.h"
    "F:/github/new_proland_cmake/ork/ork/render/Program.h"
    "F:/github/new_proland_cmake/ork/ork/render/Query.h"
    "F:/github/new_proland_cmake/ork/ork/render/RenderBuffer.h"
    "F:/github/new_proland_cmake/ork/ork/render/Sampler.h"
    "F:/github/new_proland_cmake/ork/ork/render/Texture.h"
    "F:/github/new_proland_cmake/ork/ork/render/Texture1D.h"
    "F:/github/new_proland_cmake/ork/ork/render/Texture1DArray.h"
    "F:/github/new_proland_cmake/ork/ork/render/Texture2D.h"
    "F:/github/new_proland_cmake/ork/ork/render/Texture2DArray.h"
    "F:/github/new_proland_cmake/ork/ork/render/Texture2DMultisample.h"
    "F:/github/new_proland_cmake/ork/ork/render/Texture2DMultisampleArray.h"
    "F:/github/new_proland_cmake/ork/ork/render/Texture3D.h"
    "F:/github/new_proland_cmake/ork/ork/render/TextureBuffer.h"
    "F:/github/new_proland_cmake/ork/ork/render/TextureCube.h"
    "F:/github/new_proland_cmake/ork/ork/render/TextureCubeArray.h"
    "F:/github/new_proland_cmake/ork/ork/render/TextureRectangle.h"
    "F:/github/new_proland_cmake/ork/ork/render/TransformFeedback.h"
    "F:/github/new_proland_cmake/ork/ork/render/Types.h"
    "F:/github/new_proland_cmake/ork/ork/render/Uniform.h"
    "F:/github/new_proland_cmake/ork/ork/render/Value.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ork/resource" TYPE FILE FILES
    "F:/github/new_proland_cmake/ork/ork/resource/CompiledResourceLoader.h"
    "F:/github/new_proland_cmake/ork/ork/resource/Resource.h"
    "F:/github/new_proland_cmake/ork/ork/resource/ResourceCompiler.h"
    "F:/github/new_proland_cmake/ork/ork/resource/ResourceDescriptor.h"
    "F:/github/new_proland_cmake/ork/ork/resource/ResourceFactory.h"
    "F:/github/new_proland_cmake/ork/ork/resource/ResourceLoader.h"
    "F:/github/new_proland_cmake/ork/ork/resource/ResourceManager.h"
    "F:/github/new_proland_cmake/ork/ork/resource/ResourceTemplate.h"
    "F:/github/new_proland_cmake/ork/ork/resource/XMLResourceLoader.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ork/scenegraph" TYPE FILE FILES
    "F:/github/new_proland_cmake/ork/ork/scenegraph/AbstractTask.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/CallMethodTask.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/DrawMeshTask.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/LoopTask.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/Method.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/SceneManager.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/SceneNode.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/SequenceTask.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/SetProgramTask.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/SetStateTask.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/SetTargetTask.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/SetTransformsTask.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/ShowInfoTask.h"
    "F:/github/new_proland_cmake/ork/ork/scenegraph/ShowLogTask.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ork/taskgraph" TYPE FILE FILES
    "F:/github/new_proland_cmake/ork/ork/taskgraph/MultithreadScheduler.h"
    "F:/github/new_proland_cmake/ork/ork/taskgraph/Scheduler.h"
    "F:/github/new_proland_cmake/ork/ork/taskgraph/Task.h"
    "F:/github/new_proland_cmake/ork/ork/taskgraph/TaskFactory.h"
    "F:/github/new_proland_cmake/ork/ork/taskgraph/TaskGraph.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ork/ui" TYPE FILE FILES
    "F:/github/new_proland_cmake/ork/ork/ui/DebugCallback.h"
    "F:/github/new_proland_cmake/ork/ork/ui/EventHandler.h"
    "F:/github/new_proland_cmake/ork/ork/ui/GlfwWindow.h"
    "F:/github/new_proland_cmake/ork/ork/ui/Window.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ork/util" TYPE FILE FILES "F:/github/new_proland_cmake/ork/ork/util/Font.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/ork/lib/Debug/ork.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/ork/lib/Release/ork.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/ork/lib/MinSizeRel/ork.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/github/new_proland_cmake/ork/lib/RelWithDebInfo/ork.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "F:/github/new_proland_cmake/ork/vs_sln/ork.pc")
endif()

