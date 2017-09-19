cmake_minimum_required(VERSION 2.8.3)
project(tf_tree)
set(OpenCV_DIR /usr/local/share/OpenCV)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  tf
  OpenCV REQUIRED
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  include/
  include/tf_tree/
  ../param_manager/include/
)

add_executable(tf_broadcaster
	src/tf_broadcaster.cpp
        src/tf_factory.cpp
)

target_link_libraries(tf_broadcaster ${catkin_LIBRARIES})
