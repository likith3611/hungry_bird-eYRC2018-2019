# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pluto_camera_sense: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipluto_camera_sense:/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pluto_camera_sense_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg" NAME_WE)
add_custom_target(_pluto_camera_sense_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pluto_camera_sense" "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pluto_camera_sense
  "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pluto_camera_sense
)

### Generating Services

### Generating Module File
_generate_module_cpp(pluto_camera_sense
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pluto_camera_sense
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pluto_camera_sense_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pluto_camera_sense_generate_messages pluto_camera_sense_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg" NAME_WE)
add_dependencies(pluto_camera_sense_generate_messages_cpp _pluto_camera_sense_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pluto_camera_sense_gencpp)
add_dependencies(pluto_camera_sense_gencpp pluto_camera_sense_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pluto_camera_sense_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pluto_camera_sense
  "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pluto_camera_sense
)

### Generating Services

### Generating Module File
_generate_module_eus(pluto_camera_sense
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pluto_camera_sense
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pluto_camera_sense_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pluto_camera_sense_generate_messages pluto_camera_sense_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg" NAME_WE)
add_dependencies(pluto_camera_sense_generate_messages_eus _pluto_camera_sense_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pluto_camera_sense_geneus)
add_dependencies(pluto_camera_sense_geneus pluto_camera_sense_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pluto_camera_sense_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pluto_camera_sense
  "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pluto_camera_sense
)

### Generating Services

### Generating Module File
_generate_module_lisp(pluto_camera_sense
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pluto_camera_sense
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pluto_camera_sense_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pluto_camera_sense_generate_messages pluto_camera_sense_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg" NAME_WE)
add_dependencies(pluto_camera_sense_generate_messages_lisp _pluto_camera_sense_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pluto_camera_sense_genlisp)
add_dependencies(pluto_camera_sense_genlisp pluto_camera_sense_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pluto_camera_sense_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pluto_camera_sense
  "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pluto_camera_sense
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pluto_camera_sense
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pluto_camera_sense
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pluto_camera_sense_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pluto_camera_sense_generate_messages pluto_camera_sense_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg" NAME_WE)
add_dependencies(pluto_camera_sense_generate_messages_nodejs _pluto_camera_sense_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pluto_camera_sense_gennodejs)
add_dependencies(pluto_camera_sense_gennodejs pluto_camera_sense_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pluto_camera_sense_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pluto_camera_sense
  "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pluto_camera_sense
)

### Generating Services

### Generating Module File
_generate_module_py(pluto_camera_sense
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pluto_camera_sense
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pluto_camera_sense_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pluto_camera_sense_generate_messages pluto_camera_sense_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cry2ra5y/my_catkin_workspace/src/pluto_camera_sense/msg/frame.msg" NAME_WE)
add_dependencies(pluto_camera_sense_generate_messages_py _pluto_camera_sense_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pluto_camera_sense_genpy)
add_dependencies(pluto_camera_sense_genpy pluto_camera_sense_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pluto_camera_sense_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pluto_camera_sense)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pluto_camera_sense
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pluto_camera_sense_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pluto_camera_sense)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pluto_camera_sense
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pluto_camera_sense_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pluto_camera_sense)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pluto_camera_sense
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pluto_camera_sense_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pluto_camera_sense)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pluto_camera_sense
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pluto_camera_sense_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pluto_camera_sense)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pluto_camera_sense\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pluto_camera_sense
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pluto_camera_sense_generate_messages_py std_msgs_generate_messages_py)
endif()
