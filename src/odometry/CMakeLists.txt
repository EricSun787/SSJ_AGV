cmake_minimum_required(VERSION 2.8.3)
project(odometry)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  tf
  message_generation
  std_msgs
  catkin
  REQUIRED
  COMPONENTS
)

add_message_files(
  FILES
  car_speed.msg
)

generate_messages(
  DEPENDENCIES
)

catkin_package(
    CATKIN_DEPENDS
    message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  include/odometry
)

add_executable(vel2odom src/vel2odom.cpp src/vel2odom_node.cpp)
target_link_libraries(vel2odom ${catkin_LIBRARIES})
