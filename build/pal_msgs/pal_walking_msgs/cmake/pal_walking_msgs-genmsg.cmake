# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_walking_msgs: 2 messages, 1 services")

set(MSG_I_FLAGS "-Ipal_walking_msgs:/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Ihumanoid_nav_msgs:/opt/ros/indigo/share/humanoid_nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_walking_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/srv/WalkSteps.srv" NAME_WE)
add_custom_target(_pal_walking_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_walking_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/srv/WalkSteps.srv" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStatus.msg" NAME_WE)
add_custom_target(_pal_walking_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_walking_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStatus.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStep.msg" NAME_WE)
add_custom_target(_pal_walking_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_walking_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStep.msg" "humanoid_nav_msgs/StepTarget:std_msgs/Duration:std_msgs/Header:geometry_msgs/Pose2D"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pal_walking_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_walking_msgs
)
_generate_msg_cpp(pal_walking_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStep.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/humanoid_nav_msgs/cmake/../msg/StepTarget.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_walking_msgs
)

### Generating Services
_generate_srv_cpp(pal_walking_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/srv/WalkSteps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_walking_msgs
)

### Generating Module File
_generate_module_cpp(pal_walking_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_walking_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_walking_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_walking_msgs_generate_messages pal_walking_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/srv/WalkSteps.srv" NAME_WE)
add_dependencies(pal_walking_msgs_generate_messages_cpp _pal_walking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStatus.msg" NAME_WE)
add_dependencies(pal_walking_msgs_generate_messages_cpp _pal_walking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStep.msg" NAME_WE)
add_dependencies(pal_walking_msgs_generate_messages_cpp _pal_walking_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_walking_msgs_gencpp)
add_dependencies(pal_walking_msgs_gencpp pal_walking_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_walking_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pal_walking_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_walking_msgs
)
_generate_msg_lisp(pal_walking_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStep.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/humanoid_nav_msgs/cmake/../msg/StepTarget.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_walking_msgs
)

### Generating Services
_generate_srv_lisp(pal_walking_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/srv/WalkSteps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_walking_msgs
)

### Generating Module File
_generate_module_lisp(pal_walking_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_walking_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_walking_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_walking_msgs_generate_messages pal_walking_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/srv/WalkSteps.srv" NAME_WE)
add_dependencies(pal_walking_msgs_generate_messages_lisp _pal_walking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStatus.msg" NAME_WE)
add_dependencies(pal_walking_msgs_generate_messages_lisp _pal_walking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStep.msg" NAME_WE)
add_dependencies(pal_walking_msgs_generate_messages_lisp _pal_walking_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_walking_msgs_genlisp)
add_dependencies(pal_walking_msgs_genlisp pal_walking_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_walking_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pal_walking_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_walking_msgs
)
_generate_msg_py(pal_walking_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStep.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/humanoid_nav_msgs/cmake/../msg/StepTarget.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_walking_msgs
)

### Generating Services
_generate_srv_py(pal_walking_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/srv/WalkSteps.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_walking_msgs
)

### Generating Module File
_generate_module_py(pal_walking_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_walking_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_walking_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_walking_msgs_generate_messages pal_walking_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/srv/WalkSteps.srv" NAME_WE)
add_dependencies(pal_walking_msgs_generate_messages_py _pal_walking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStatus.msg" NAME_WE)
add_dependencies(pal_walking_msgs_generate_messages_py _pal_walking_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_walking_msgs/msg/WalkingStep.msg" NAME_WE)
add_dependencies(pal_walking_msgs_generate_messages_py _pal_walking_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_walking_msgs_genpy)
add_dependencies(pal_walking_msgs_genpy pal_walking_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_walking_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_walking_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_walking_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pal_walking_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET humanoid_nav_msgs_generate_messages_cpp)
  add_dependencies(pal_walking_msgs_generate_messages_cpp humanoid_nav_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_walking_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_walking_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pal_walking_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET humanoid_nav_msgs_generate_messages_lisp)
  add_dependencies(pal_walking_msgs_generate_messages_lisp humanoid_nav_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_walking_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_walking_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_walking_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pal_walking_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET humanoid_nav_msgs_generate_messages_py)
  add_dependencies(pal_walking_msgs_generate_messages_py humanoid_nav_msgs_generate_messages_py)
endif()
