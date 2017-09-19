#include<ros/ros.h>
#include<tf/transform_broadcaster.h>
#include "tf_factory.h"
int main(int argc, char** argv)
{
    ros::init(argc, argv, "robot_tf_publisher");
    ros::NodeHandle n;
    ros::Rate r(100);
    tf::TransformBroadcaster broadcaster;
    autocar::tf_mul::tf_factory lidar_tf;
    lidar_tf.create_tf();
    tf::Quaternion quaternion = lidar_tf.get_rotate();
    tf::Vector3 trans = lidar_tf.get_transf();

    while(n.ok())
    {
        broadcaster.sendTransform(tf::StampedTransform(tf::Transform(quaternion, trans), ros::Time(0), "base_link", "laser"));
        r.sleep();
    }
}
