# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vps: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ivps:/home/ajay/vpns_ws/src/vps/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vps_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg" NAME_WE)
add_custom_target(_vps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vps" "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vps
  "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vps
)

### Generating Services

### Generating Module File
_generate_module_cpp(vps
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vps
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vps_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vps_generate_messages vps_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg" NAME_WE)
add_dependencies(vps_generate_messages_cpp _vps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vps_gencpp)
add_dependencies(vps_gencpp vps_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vps_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vps
  "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vps
)

### Generating Services

### Generating Module File
_generate_module_eus(vps
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vps
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vps_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vps_generate_messages vps_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg" NAME_WE)
add_dependencies(vps_generate_messages_eus _vps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vps_geneus)
add_dependencies(vps_geneus vps_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vps_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vps
  "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vps
)

### Generating Services

### Generating Module File
_generate_module_lisp(vps
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vps
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vps_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vps_generate_messages vps_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg" NAME_WE)
add_dependencies(vps_generate_messages_lisp _vps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vps_genlisp)
add_dependencies(vps_genlisp vps_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vps_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vps
  "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vps
)

### Generating Services

### Generating Module File
_generate_module_nodejs(vps
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vps
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vps_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vps_generate_messages vps_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg" NAME_WE)
add_dependencies(vps_generate_messages_nodejs _vps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vps_gennodejs)
add_dependencies(vps_gennodejs vps_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vps_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vps
  "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vps
)

### Generating Services

### Generating Module File
_generate_module_py(vps
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vps
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vps_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vps_generate_messages vps_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ajay/vpns_ws/src/vps/msg/pathDetails.msg" NAME_WE)
add_dependencies(vps_generate_messages_py _vps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vps_genpy)
add_dependencies(vps_genpy vps_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vps_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vps
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vps_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vps
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vps_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vps
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vps_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vps
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vps_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vps)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vps\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vps
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vps_generate_messages_py std_msgs_generate_messages_py)
endif()
