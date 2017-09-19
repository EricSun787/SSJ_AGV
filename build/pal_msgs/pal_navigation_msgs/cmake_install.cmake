# Install script for directory: /home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/action" TYPE FILE FILES
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/action/JoyPriority.action"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/action/JoyTurbo.action"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/action/GoToPOI.action"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/action/GoTo.action"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/action/VisualTraining.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityAction.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyTurboAction.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyTurboGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyTurboResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToPOIAction.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToPOIResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToAction.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToActionGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToActionResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToActionFeedback.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/GoToFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingAction.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingResult.msg"
    "/home/ssj/ros_ws/devel/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/POI.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/srv" TYPE FILE FILES
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv"
    "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES "/home/ssj/ros_ws/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ssj/ros_ws/devel/include/pal_navigation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ssj/ros_ws/devel/share/common-lisp/ros/pal_navigation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/ssj/ros_ws/devel/lib/python2.7/dist-packages/pal_navigation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ssj/ros_ws/devel/lib/python2.7/dist-packages/pal_navigation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ssj/ros_ws/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES "/home/ssj/ros_ws/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES
    "/home/ssj/ros_ws/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgsConfig.cmake"
    "/home/ssj/ros_ws/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs" TYPE FILE FILES "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pal_navigation_msgs" TYPE DIRECTORY FILES "/home/ssj/ros_ws/src/pal_msgs/pal_navigation_msgs/include/pal_navigation_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

