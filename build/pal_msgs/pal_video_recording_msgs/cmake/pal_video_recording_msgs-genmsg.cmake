# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_video_recording_msgs: 0 messages, 2 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_video_recording_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StopRecording.srv" NAME_WE)
add_custom_target(_pal_video_recording_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_video_recording_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StopRecording.srv" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StartRecording.srv" NAME_WE)
add_custom_target(_pal_video_recording_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_video_recording_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StartRecording.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pal_video_recording_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StopRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_video_recording_msgs
)
_generate_srv_cpp(pal_video_recording_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StartRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_video_recording_msgs
)

### Generating Module File
_generate_module_cpp(pal_video_recording_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_video_recording_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_video_recording_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_video_recording_msgs_generate_messages pal_video_recording_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StopRecording.srv" NAME_WE)
add_dependencies(pal_video_recording_msgs_generate_messages_cpp _pal_video_recording_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StartRecording.srv" NAME_WE)
add_dependencies(pal_video_recording_msgs_generate_messages_cpp _pal_video_recording_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_video_recording_msgs_gencpp)
add_dependencies(pal_video_recording_msgs_gencpp pal_video_recording_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_video_recording_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pal_video_recording_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StopRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_video_recording_msgs
)
_generate_srv_lisp(pal_video_recording_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StartRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_video_recording_msgs
)

### Generating Module File
_generate_module_lisp(pal_video_recording_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_video_recording_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_video_recording_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_video_recording_msgs_generate_messages pal_video_recording_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StopRecording.srv" NAME_WE)
add_dependencies(pal_video_recording_msgs_generate_messages_lisp _pal_video_recording_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StartRecording.srv" NAME_WE)
add_dependencies(pal_video_recording_msgs_generate_messages_lisp _pal_video_recording_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_video_recording_msgs_genlisp)
add_dependencies(pal_video_recording_msgs_genlisp pal_video_recording_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_video_recording_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pal_video_recording_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StopRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_video_recording_msgs
)
_generate_srv_py(pal_video_recording_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StartRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_video_recording_msgs
)

### Generating Module File
_generate_module_py(pal_video_recording_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_video_recording_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_video_recording_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_video_recording_msgs_generate_messages pal_video_recording_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StopRecording.srv" NAME_WE)
add_dependencies(pal_video_recording_msgs_generate_messages_py _pal_video_recording_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_video_recording_msgs/srv/StartRecording.srv" NAME_WE)
add_dependencies(pal_video_recording_msgs_generate_messages_py _pal_video_recording_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_video_recording_msgs_genpy)
add_dependencies(pal_video_recording_msgs_genpy pal_video_recording_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_video_recording_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_video_recording_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_video_recording_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_video_recording_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_video_recording_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_video_recording_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_video_recording_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_video_recording_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
