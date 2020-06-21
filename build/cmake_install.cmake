# Install script for directory: /home/cry2ra5y/my_catkin_workspace/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/cry2ra5y/my_catkin_workspace/install")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cry2ra5y/my_catkin_workspace/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cry2ra5y/my_catkin_workspace/install" TYPE PROGRAM FILES "/home/cry2ra5y/my_catkin_workspace/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cry2ra5y/my_catkin_workspace/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cry2ra5y/my_catkin_workspace/install" TYPE PROGRAM FILES "/home/cry2ra5y/my_catkin_workspace/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cry2ra5y/my_catkin_workspace/install/setup.bash;/home/cry2ra5y/my_catkin_workspace/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cry2ra5y/my_catkin_workspace/install" TYPE FILE FILES
    "/home/cry2ra5y/my_catkin_workspace/build/catkin_generated/installspace/setup.bash"
    "/home/cry2ra5y/my_catkin_workspace/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cry2ra5y/my_catkin_workspace/install/setup.sh;/home/cry2ra5y/my_catkin_workspace/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cry2ra5y/my_catkin_workspace/install" TYPE FILE FILES
    "/home/cry2ra5y/my_catkin_workspace/build/catkin_generated/installspace/setup.sh"
    "/home/cry2ra5y/my_catkin_workspace/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cry2ra5y/my_catkin_workspace/install/setup.zsh;/home/cry2ra5y/my_catkin_workspace/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cry2ra5y/my_catkin_workspace/install" TYPE FILE FILES
    "/home/cry2ra5y/my_catkin_workspace/build/catkin_generated/installspace/setup.zsh"
    "/home/cry2ra5y/my_catkin_workspace/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cry2ra5y/my_catkin_workspace/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cry2ra5y/my_catkin_workspace/install" TYPE FILE FILES "/home/cry2ra5y/my_catkin_workspace/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/cry2ra5y/my_catkin_workspace/build/gtest/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/aruco_ros/aruco/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/geometry2/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/image_pipeline/image_pipeline/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/pluto_drone/pluto_drone/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/pluto_localize/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/aruco_ros/aruco_msgs/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/brics_actuator/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2_msgs/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2_bullet/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2_eigen/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/hello_ros/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/hungry_bird/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/pid_tune/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/pluto_camera_sense/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/pluto_map/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/pluto_planning/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/image_pipeline/camera_calibration/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2_py/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/image_pipeline/image_proc/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/image_pipeline/image_publisher/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/pluto_drone/plutodrone/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/pluto_drone/plutoserver/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/image_pipeline/image_view/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/image_pipeline/stereo_image_proc/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2_ros/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/image_pipeline/depth_image_proc/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/aruco_ros/aruco_ros/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2_geometry_msgs/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/image_pipeline/image_rotate/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2_kdl/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/test_tf2/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2_sensor_msgs/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2_tools/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/vrep_ros_interface/cmake_install.cmake")
  include("/home/cry2ra5y/my_catkin_workspace/build/whycon/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/cry2ra5y/my_catkin_workspace/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
