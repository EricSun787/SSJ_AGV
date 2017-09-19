# Install script for directory: /home/ssj/ros_ws/src/pal_msgs/pal_behaviour_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/ssj/ros_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_behaviour_msgs/action" TYPE FILE FILES
    "/home/ssj/ros_ws/src/pal_msgs/pal_behaviour_msgs/action/BehaviourTask.action"
    "/home/ssj/ros_ws/src/pal_msgs/pal_behaviour_msgs/action/Presentation.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_behaviour_msgs/msg" TYPE FILE FILES
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/BehaviourTaskAction.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/BehaviourTaskActionGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/BehaviourTaskActionResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/BehaviourTaskActionFeedback.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/BehaviourTaskGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/BehaviourTaskResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/BehaviourTaskFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_behaviour_msgs/msg" TYPE FILE FILES
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/PresentationAction.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/PresentationActionGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/PresentationActionResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/PresentationActionFeedback.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/PresentationGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/PresentationResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_behaviour_msgs/msg/PresentationFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_behaviour_msgs/msg" TYPE FILE FILES "/home/ssj/ros_ws/src/pal_msgs/pal_behaviour_msgs/msg/BehaviourArgument.msg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_behaviour_msgs/srv" TYPE FILE FILES "/home/ssj/ros_ws/src/pal_msgs/pal_behaviour_msgs/srv/BehaviourEvent.srv")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_behaviour_msgs/cmake" TYPE FILE FILES "/home/ssj/ros_ws/build/pal_msgs/pal_behaviour_msgs/catkin_generated/installspace/pal_behaviour_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ssj/ros_ws/devel/include/pal_behaviour_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ssj/ros_ws/devel/share/common-lisp/ros/pal_behaviour_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/ssj/ros_ws/devel/lib/python2.7/dist-packages/pal_behaviour_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ssj/ros_ws/devel/lib/python2.7/dist-packages/pal_behaviour_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ssj/ros_ws/build/pal_msgs/pal_behaviour_msgs/catkin_generated/installspace/pal_behaviour_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_behaviour_msgs/cmake" TYPE FILE FILES "/home/ssj/ros_ws/build/pal_msgs/pal_behaviour_msgs/catkin_generated/installspace/pal_behaviour_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_behaviour_msgs/cmake" TYPE FILE FILES
    "/home/ssj/ros_ws/build/pal_msgs/pal_behaviour_msgs/catkin_generated/installspace/pal_behaviour_msgsConfig.cmake"
    "/home/ssj/ros_ws/build/pal_msgs/pal_behaviour_msgs/catkin_generated/installspace/pal_behaviour_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_behaviour_msgs" TYPE FILE FILES "/home/ssj/ros_ws/src/pal_msgs/pal_behaviour_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

