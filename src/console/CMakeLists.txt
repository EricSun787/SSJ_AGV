cmake_minimum_required(VERSION 2.8.3)
project(console)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  geometry_msgs
  message_generation
  catkin
  REQUIRED
  COMPONENTS
)

add_message_files(
  FILES
  serial_data.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
    CATKIN_DEPENDS
    message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(console src/console.cpp)
target_link_libraries(console ${catkin_LIBRARIES})
