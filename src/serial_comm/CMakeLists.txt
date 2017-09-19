cmake_minimum_required(VERSION 2.8.3)
add_compile_options(-std=c++11)
project(serial_comm)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  geometry_msgs
  catkin REQUIRED
  COMPONENTS
  message_generation
)


## find yaml parser lib
include_directories(
  "/usr/local/include/"
  ../param_manager/include
)
file(GLOB self_LIBRARIES /usr/local/lib/*.so)

add_message_files(
  FILES
  car_speed.msg
  serial_data.msg
  pan_data.msg
)
generate_messages(
  DEPENDENCIES
  geometry_msgs std_msgs
)

catkin_package(
  CATKIN_DEPENDS
  message_runtime
  roscpp
  geometry_msgs
  std_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  include/
)

add_executable(comm_write
  src/comm_write.cpp
  src/comm_write_node.cpp
)
target_link_libraries(comm_write ${catkin_LIBRARIES} ${self_LIBRARIES})

add_executable(comm_read
  src/comm_read.cpp
  src/comm_read_node.cpp
)
target_link_libraries(comm_read ${catkin_LIBRARIES} ${self_LIBRARIES} ${OpenCV_LIBRARIES})

