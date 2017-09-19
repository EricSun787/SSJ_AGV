#include "logical_core.h"
#include <tf/transform_listener.h>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "brain_node");
  tf::TransformListener tf(ros::Duration(10), true);
  LogicalCore logical_core(tf);
  ros::spin();
  return 0;
}
