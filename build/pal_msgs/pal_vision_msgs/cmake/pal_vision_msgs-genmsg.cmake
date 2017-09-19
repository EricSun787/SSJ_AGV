# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_vision_msgs: 18 messages, 5 services")

set(MSG_I_FLAGS "-Ipal_vision_msgs:/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg;-Ipal_vision_msgs:/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_vision_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Gesture.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Gesture.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionAction.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionAction.msg" "pal_vision_msgs/FaceRecognitionActionGoal:pal_vision_msgs/FaceRecognitionActionFeedback:pal_vision_msgs/FaceRecognitionGoal:actionlib_msgs/GoalID:pal_vision_msgs/FaceRecognitionFeedback:std_msgs/Header:actionlib_msgs/GoalStatus:pal_vision_msgs/FaceRecognitionResult:pal_vision_msgs/FaceRecognitionActionResult"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg" "pal_vision_msgs/FaceRecognitionResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStart.srv" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStart.srv" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStop.srv" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStop.srv" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HeadPanTilt.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HeadPanTilt.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg" "actionlib_msgs/GoalID:pal_vision_msgs/FaceRecognitionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStop.srv" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStop.srv" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:pal_vision_msgs/FaceRecognitionFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg" "geometry_msgs/Vector3:pal_vision_msgs/Rectangle:std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStart.srv" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStart.srv" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetections.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetections.msg" "pal_vision_msgs/FaceDetection:pal_vision_msgs/Rectangle:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/LookToPixel.srv" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/LookToPixel.srv" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FollowMeResponse.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FollowMeResponse.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedObject.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedObject.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedPerson.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedPerson.msg" "std_msgs/ColorRGBA:pal_vision_msgs/Rectangle:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg" "pal_vision_msgs/Rectangle:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/LegDetections.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/LegDetections.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetections.msg" NAME_WE)
add_custom_target(_pal_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_vision_msgs" "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetections.msg" "pal_vision_msgs/HogDetection:geometry_msgs/Vector3:pal_vision_msgs/Rectangle:std_msgs/Header:std_msgs/ColorRGBA"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HeadPanTilt.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/LegDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FollowMeResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedPerson.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)

### Generating Services
_generate_srv_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/LookToPixel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_cpp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
)

### Generating Module File
_generate_module_cpp(pal_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_vision_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_vision_msgs_generate_messages pal_vision_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionAction.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStart.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStop.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HeadPanTilt.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStop.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStart.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetections.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/LookToPixel.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FollowMeResponse.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedObject.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedPerson.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/LegDetections.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetections.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_cpp _pal_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_vision_msgs_gencpp)
add_dependencies(pal_vision_msgs_gencpp pal_vision_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_vision_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HeadPanTilt.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/LegDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FollowMeResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedPerson.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)

### Generating Services
_generate_srv_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/LookToPixel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_lisp(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
)

### Generating Module File
_generate_module_lisp(pal_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_vision_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_vision_msgs_generate_messages pal_vision_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionAction.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStart.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStop.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HeadPanTilt.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStop.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStart.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetections.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/LookToPixel.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FollowMeResponse.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedObject.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedPerson.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/LegDetections.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetections.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_lisp _pal_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_vision_msgs_genlisp)
add_dependencies(pal_vision_msgs_genlisp pal_vision_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_vision_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HeadPanTilt.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/LegDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FollowMeResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedPerson.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_msg_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)

### Generating Services
_generate_srv_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/LookToPixel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStart.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)
_generate_srv_py(pal_vision_msgs
  "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
)

### Generating Module File
_generate_module_py(pal_vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_vision_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_vision_msgs_generate_messages pal_vision_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionAction.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStart.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FaceTrackingStop.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/Rectangle.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HeadPanTilt.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStop.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetection.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/FollowMeStart.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetections.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/srv/LookToPixel.srv" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FollowMeResponse.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedObject.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/DetectedPerson.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/LegDetections.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/src/pal_msgs/pal_vision_msgs/msg/HogDetections.msg" NAME_WE)
add_dependencies(pal_vision_msgs_generate_messages_py _pal_vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_vision_msgs_genpy)
add_dependencies(pal_vision_msgs_genpy pal_vision_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_vision_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_vision_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(pal_vision_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pal_vision_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(pal_vision_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_vision_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(pal_vision_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pal_vision_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(pal_vision_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_vision_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(pal_vision_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pal_vision_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(pal_vision_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
