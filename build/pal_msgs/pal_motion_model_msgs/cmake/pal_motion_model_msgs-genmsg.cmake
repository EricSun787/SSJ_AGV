# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_motion_model_msgs: 3 messages, 1 services")

set(MSG_I_FLAGS "-Ipal_motion_model_msgs:/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg;-Inav_msgs:/opt/ros/indigo/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_motion_model_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg" NAME_WE)
add_custom_target(_pal_motion_model_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_motion_model_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg" "geometry_msgs/Point:pal_motion_model_msgs/MotionModel:pal_motion_model_msgs/MotionModelList:std_msgs/Header:geometry_msgs/Quaternion:nav_msgs/MapMetaData:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg" NAME_WE)
add_custom_target(_pal_motion_model_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_motion_model_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg" "pal_motion_model_msgs/MotionModel"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/srv/GetMotionMap.srv" NAME_WE)
add_custom_target(_pal_motion_model_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_motion_model_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/srv/GetMotionMap.srv" "geometry_msgs/Point:pal_motion_model_msgs/MotionModel:pal_motion_model_msgs/MotionModelList:std_msgs/Header:geometry_msgs/Quaternion:pal_motion_model_msgs/MotionModelMap:nav_msgs/MapMetaData:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg" NAME_WE)
add_custom_target(_pal_motion_model_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_motion_model_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_motion_model_msgs
)
_generate_msg_cpp(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_motion_model_msgs
)
_generate_msg_cpp(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_motion_model_msgs
)

### Generating Services
_generate_srv_cpp(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/srv/GetMotionMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_motion_model_msgs
)

### Generating Module File
_generate_module_cpp(pal_motion_model_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_motion_model_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_motion_model_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_motion_model_msgs_generate_messages pal_motion_model_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_cpp _pal_motion_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_cpp _pal_motion_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/srv/GetMotionMap.srv" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_cpp _pal_motion_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_cpp _pal_motion_model_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_motion_model_msgs_gencpp)
add_dependencies(pal_motion_model_msgs_gencpp pal_motion_model_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_motion_model_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_motion_model_msgs
)
_generate_msg_lisp(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_motion_model_msgs
)
_generate_msg_lisp(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_motion_model_msgs
)

### Generating Services
_generate_srv_lisp(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/srv/GetMotionMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_motion_model_msgs
)

### Generating Module File
_generate_module_lisp(pal_motion_model_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_motion_model_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_motion_model_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_motion_model_msgs_generate_messages pal_motion_model_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_lisp _pal_motion_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_lisp _pal_motion_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/srv/GetMotionMap.srv" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_lisp _pal_motion_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_lisp _pal_motion_model_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_motion_model_msgs_genlisp)
add_dependencies(pal_motion_model_msgs_genlisp pal_motion_model_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_motion_model_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_motion_model_msgs
)
_generate_msg_py(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_motion_model_msgs
)
_generate_msg_py(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_motion_model_msgs
)

### Generating Services
_generate_srv_py(pal_motion_model_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/srv/GetMotionMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_motion_model_msgs
)

### Generating Module File
_generate_module_py(pal_motion_model_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_motion_model_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_motion_model_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_motion_model_msgs_generate_messages pal_motion_model_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelMap.msg" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_py _pal_motion_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModelList.msg" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_py _pal_motion_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/srv/GetMotionMap.srv" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_py _pal_motion_model_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_motion_model_msgs/msg/MotionModel.msg" NAME_WE)
add_dependencies(pal_motion_model_msgs_generate_messages_py _pal_motion_model_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_motion_model_msgs_genpy)
add_dependencies(pal_motion_model_msgs_genpy pal_motion_model_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_motion_model_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_motion_model_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_motion_model_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(pal_motion_model_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pal_motion_model_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_motion_model_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_motion_model_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(pal_motion_model_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pal_motion_model_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_motion_model_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_motion_model_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_motion_model_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(pal_motion_model_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pal_motion_model_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
