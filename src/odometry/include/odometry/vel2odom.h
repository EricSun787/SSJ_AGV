#ifndef VEL2ODOM_H
#define VEL2ODOM_H
#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
namespace autocar
{
namespace odom_mul
{
class vel2odom
{
public:
  vel2odom();
  /**
   * @brief Calculating odom from velocity
   */
  void cal_odom();

public:
  double x;  ///< X-axis coordinates of the car in map
  double y;  ///< y-axis coordinates of the car in map
  double th; ///< yaw-axis coordinates of the car in map

  double vx; ///< x-axis velocity of the car
  double vy; ///< y-axis velocity of the car
  double vth;///< yaw-axis velocity of the car
  geometry_msgs::Quaternion odom_quat; //< the quaternion of the car attitude
  ros::Time current_time;
  ros::Time last_time;
};
}
}

#endif // VEL2ODOM_H
