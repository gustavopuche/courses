# Install script for directory: /home/gustavo/Documents/Work/courses/basic-c++/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/gustavo/Documents/Work/courses/basic-c++/examples/structures/cmake_install.cmake")
  include("/home/gustavo/Documents/Work/courses/basic-c++/examples/classes/cmake_install.cmake")
  include("/home/gustavo/Documents/Work/courses/basic-c++/examples/unions/cmake_install.cmake")
  include("/home/gustavo/Documents/Work/courses/basic-c++/examples/enum/cmake_install.cmake")
  include("/home/gustavo/Documents/Work/courses/basic-c++/examples/memory/cmake_install.cmake")
  include("/home/gustavo/Documents/Work/courses/basic-c++/examples/modularity/cmake_install.cmake")
  include("/home/gustavo/Documents/Work/courses/basic-c++/examples/modularity/namespaces/cmake_install.cmake")
  include("/home/gustavo/Documents/Work/courses/basic-c++/examples/classes/concreteClasses/cmake_install.cmake")
  include("/home/gustavo/Documents/Work/courses/basic-c++/examples/classes/abstractClassesAndIneritance/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/gustavo/Documents/Work/courses/basic-c++/examples/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
