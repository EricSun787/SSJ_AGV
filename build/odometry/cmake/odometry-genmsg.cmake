# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "odometry: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iodometry:/home/ssj/ros_ws/src/odometry/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(odometry_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ssj/ros_ws/src/odometry/msg/car_speed.msg" NAME_WE)
add_custom_target(_odometry_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "odometry" "/home/ssj/ros_ws/src/odometry/msg/car_speed.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(odometry
  "/home/ssj/ros_ws/src/odometry/msg/car_speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odometry
)

### Generating Services

### Generating Module File
_generate_module_cpp(odometry
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odometry
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(odometry_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(odometry_generate_messages odometry_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/odometry/msg/car_speed.msg" NAME_WE)
add_dependencies(odometry_generate_messages_cpp _odometry_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odometry_gencpp)
add_dependencies(odometry_gencpp odometry_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odometry_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(odometry
  "/home/ssj/ros_ws/src/odometry/msg/car_speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odometry
)

### Generating Services

### Generating Module File
_generate_module_lisp(odometry
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odometry
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(odometry_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(odometry_generate_messages odometry_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/odometry/msg/car_speed.msg" NAME_WE)
add_dependencies(odometry_generate_messages_lisp _odometry_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odometry_genlisp)
add_dependencies(odometry_genlisp odometry_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odometry_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(odometry
  "/home/ssj/ros_ws/src/odometry/msg/car_speed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odometry
)

### Generating Services

### Generating Module File
_generate_module_py(odometry
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odometry
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(odometry_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(odometry_generate_messages odometry_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/odometry/msg/car_speed.msg" NAME_WE)
add_dependencies(odometry_generate_messages_py _odometry_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odometry_genpy)
add_dependencies(odometry_genpy odometry_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odometry_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odometry)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odometry
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odometry)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odometry
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odometry)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odometry\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odometry
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
