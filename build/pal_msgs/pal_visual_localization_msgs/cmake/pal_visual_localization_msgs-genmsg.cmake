# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_visual_localization_msgs: 14 messages, 0 services")

set(MSG_I_FLAGS "-Ipal_visual_localization_msgs:/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_visual_localization_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeAction.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeAction.msg" "pal_visual_localization_msgs/VisualLocRecognizeActionGoal:geometry_msgs/Point:geometry_msgs/Quaternion:pal_visual_localization_msgs/VisualLocRecognizeGoal:actionlib_msgs/GoalID:pal_visual_localization_msgs/VisualLocRecognizeFeedback:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/PoseWithCovariance:pal_visual_localization_msgs/VisualLocRecognizeResult:pal_visual_localization_msgs/VisualLocRecognizeActionFeedback:std_msgs/Header:actionlib_msgs/GoalStatus:pal_visual_localization_msgs/VisualLocRecognizeActionResult:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:pal_visual_localization_msgs/VisualLocRecognizeFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:pal_visual_localization_msgs/VisualLocAddPlaceGoal"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg" "actionlib_msgs/GoalID:pal_visual_localization_msgs/VisualLocRecognizeGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg" "actionlib_msgs/GoalStatus:pal_visual_localization_msgs/VisualLocAddPlaceResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceAction.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceAction.msg" "pal_visual_localization_msgs/VisualLocAddPlaceActionResult:pal_visual_localization_msgs/VisualLocAddPlaceFeedback:actionlib_msgs/GoalStatus:pal_visual_localization_msgs/VisualLocAddPlaceResult:actionlib_msgs/GoalID:pal_visual_localization_msgs/VisualLocAddPlaceGoal:std_msgs/Header:pal_visual_localization_msgs/VisualLocAddPlaceActionFeedback:pal_visual_localization_msgs/VisualLocAddPlaceActionGoal"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:pal_visual_localization_msgs/VisualLocAddPlaceFeedback"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg" ""
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg" "geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg" NAME_WE)
add_custom_target(_pal_visual_localization_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_visual_localization_msgs" "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:pal_visual_localization_msgs/VisualLocRecognizeResult:std_msgs/Header:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_cpp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(pal_visual_localization_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_visual_localization_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_visual_localization_msgs_generate_messages pal_visual_localization_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeAction.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceAction.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_cpp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_visual_localization_msgs_gencpp)
add_dependencies(pal_visual_localization_msgs_gencpp pal_visual_localization_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_visual_localization_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_lisp(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(pal_visual_localization_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_visual_localization_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_visual_localization_msgs_generate_messages pal_visual_localization_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeAction.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceAction.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_lisp _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_visual_localization_msgs_genlisp)
add_dependencies(pal_visual_localization_msgs_genlisp pal_visual_localization_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_visual_localization_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)
_generate_msg_py(pal_visual_localization_msgs
  "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(pal_visual_localization_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_visual_localization_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_visual_localization_msgs_generate_messages pal_visual_localization_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeAction.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceAction.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeGoal.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceActionFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocAddPlaceFeedback.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ssj/ros_ws/devel/share/pal_visual_localization_msgs/msg/VisualLocRecognizeActionResult.msg" NAME_WE)
add_dependencies(pal_visual_localization_msgs_generate_messages_py _pal_visual_localization_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_visual_localization_msgs_genpy)
add_dependencies(pal_visual_localization_msgs_genpy pal_visual_localization_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_visual_localization_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_visual_localization_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pal_visual_localization_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pal_visual_localization_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(pal_visual_localization_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_visual_localization_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pal_visual_localization_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pal_visual_localization_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(pal_visual_localization_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_visual_localization_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pal_visual_localization_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pal_visual_localization_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(pal_visual_localization_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
