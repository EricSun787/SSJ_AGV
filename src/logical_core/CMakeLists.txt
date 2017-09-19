cmake_minimum_required(VERSION 2.8.3)
project(logical_core)

add_definitions(-std=c++11)
set(OpenCV_DIR /usr/local/share/OpenCV/)

find_package(catkin REQUIRED COMPONENTS
  actionlib
  move_base_msgs
  geometry_msgs
  roscpp
  tf
  message_generation
  OpenCV REQUIRED
)


add_service_files(
  FILES
  SetGoal.srv
)

generate_messages(
   DEPENDENCIES
   move_base_msgs
   geometry_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
)
add_executable(logical_core
    src/logical_core.cpp
    src/logical_core_node.cpp
    src/mission_mode.cpp
    src/patrol_mode.cpp
    src/point_mode.cpp
    src/shooting_mode.cpp
)
target_link_libraries(logical_core ${catkin_LIBRARIES})
