# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "logical_core: 0 messages, 1 services")

set(MSG_I_FLAGS "-Imove_base_msgs:/home/ssj/ros_ws/devel/share/move_base_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(logical_core_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ssj/ros_ws/src/logical_core/srv/SetGoal.srv" NAME_WE)
add_custom_target(_logical_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "logical_core" "/home/ssj/ros_ws/src/logical_core/srv/SetGoal.srv" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(logical_core
  "/home/ssj/ros_ws/src/logical_core/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/logical_core
)

### Generating Module File
_generate_module_cpp(logical_core
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/logical_core
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(logical_core_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(logical_core_generate_messages logical_core_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/logical_core/srv/SetGoal.srv" NAME_WE)
add_dependencies(logical_core_generate_messages_cpp _logical_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(logical_core_gencpp)
add_dependencies(logical_core_gencpp logical_core_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS logical_core_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(logical_core
  "/home/ssj/ros_ws/src/logical_core/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/logical_core
)

### Generating Module File
_generate_module_lisp(logical_core
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/logical_core
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(logical_core_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(logical_core_generate_messages logical_core_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/logical_core/srv/SetGoal.srv" NAME_WE)
add_dependencies(logical_core_generate_messages_lisp _logical_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(logical_core_genlisp)
add_dependencies(logical_core_genlisp logical_core_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS logical_core_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(logical_core
  "/home/ssj/ros_ws/src/logical_core/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/logical_core
)

### Generating Module File
_generate_module_py(logical_core
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/logical_core
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(logical_core_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(logical_core_generate_messages logical_core_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/logical_core/srv/SetGoal.srv" NAME_WE)
add_dependencies(logical_core_generate_messages_py _logical_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(logical_core_genpy)
add_dependencies(logical_core_genpy logical_core_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS logical_core_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/logical_core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/logical_core
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET move_base_msgs_generate_messages_cpp)
  add_dependencies(logical_core_generate_messages_cpp move_base_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(logical_core_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/logical_core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/logical_core
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET move_base_msgs_generate_messages_lisp)
  add_dependencies(logical_core_generate_messages_lisp move_base_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(logical_core_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/logical_core)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/logical_core\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/logical_core
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET move_base_msgs_generate_messages_py)
  add_dependencies(logical_core_generate_messages_py move_base_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(logical_core_generate_messages_py geometry_msgs_generate_messages_py)
endif()
