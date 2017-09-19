# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_device_msgs: 3 messages, 4 services")

set(MSG_I_FLAGS "-Ipal_device_msgs:/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_device_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedColourEffect.srv" NAME_WE)
add_custom_target(_pal_device_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_device_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedColourEffect.srv" "std_msgs/ColorRGBA:pal_device_msgs/LedGroup"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg" NAME_WE)
add_custom_target(_pal_device_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_device_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/BatteryState.msg" NAME_WE)
add_custom_target(_pal_device_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_device_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/BatteryState.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/Bumper.msg" NAME_WE)
add_custom_target(_pal_device_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_device_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/Bumper.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedFadeEffect.srv" NAME_WE)
add_custom_target(_pal_device_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_device_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedFadeEffect.srv" "std_msgs/ColorRGBA:pal_device_msgs/LedGroup"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedBlinkEffect.srv" NAME_WE)
add_custom_target(_pal_device_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_device_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedBlinkEffect.srv" "std_msgs/ColorRGBA:pal_device_msgs/LedGroup"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/CancelEffect.srv" NAME_WE)
add_custom_target(_pal_device_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_device_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/CancelEffect.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/Bumper.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_device_msgs
)
_generate_msg_cpp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_device_msgs
)
_generate_msg_cpp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_device_msgs
)

### Generating Services
_generate_srv_cpp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedColourEffect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_device_msgs
)
_generate_srv_cpp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedFadeEffect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_device_msgs
)
_generate_srv_cpp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedBlinkEffect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_device_msgs
)
_generate_srv_cpp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/CancelEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_device_msgs
)

### Generating Module File
_generate_module_cpp(pal_device_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_device_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_device_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_device_msgs_generate_messages pal_device_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedColourEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_cpp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_cpp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_cpp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/Bumper.msg" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_cpp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedFadeEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_cpp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedBlinkEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_cpp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/CancelEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_cpp _pal_device_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_device_msgs_gencpp)
add_dependencies(pal_device_msgs_gencpp pal_device_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_device_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/Bumper.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_device_msgs
)
_generate_msg_lisp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_device_msgs
)
_generate_msg_lisp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_device_msgs
)

### Generating Services
_generate_srv_lisp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedColourEffect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_device_msgs
)
_generate_srv_lisp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedFadeEffect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_device_msgs
)
_generate_srv_lisp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedBlinkEffect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_device_msgs
)
_generate_srv_lisp(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/CancelEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_device_msgs
)

### Generating Module File
_generate_module_lisp(pal_device_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_device_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_device_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_device_msgs_generate_messages pal_device_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedColourEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_lisp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_lisp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_lisp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/Bumper.msg" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_lisp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedFadeEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_lisp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedBlinkEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_lisp _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/CancelEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_lisp _pal_device_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_device_msgs_genlisp)
add_dependencies(pal_device_msgs_genlisp pal_device_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_device_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/Bumper.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs
)
_generate_msg_py(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs
)
_generate_msg_py(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs
)

### Generating Services
_generate_srv_py(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedColourEffect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs
)
_generate_srv_py(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedFadeEffect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs
)
_generate_srv_py(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedBlinkEffect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs
)
_generate_srv_py(pal_device_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/CancelEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs
)

### Generating Module File
_generate_module_py(pal_device_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_device_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_device_msgs_generate_messages pal_device_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedColourEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_py _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/LedGroup.msg" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_py _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_py _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/msg/Bumper.msg" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_py _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedFadeEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_py _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/TimedBlinkEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_py _pal_device_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_device_msgs/srv/CancelEffect.srv" NAME_WE)
add_dependencies(pal_device_msgs_generate_messages_py _pal_device_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_device_msgs_genpy)
add_dependencies(pal_device_msgs_genpy pal_device_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_device_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_device_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_device_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pal_device_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_device_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_device_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pal_device_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_device_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pal_device_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
