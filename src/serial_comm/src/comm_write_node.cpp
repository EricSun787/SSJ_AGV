#include "ros/ros.h"
#include <geometry_msgs/Twist.h>
#include <vision_unit/armor_msg.h>
#include "comm_write.h"

autocar::serial_mul::comm_write car_comm_write;
autocar::serial_mul::data_t data;
void vel_callback(const geometry_msgs::Twist& vel_data)
{
  if(data.vision_data_status == 1)
    data.auto_vw = 0.0;
  else
    data.auto_vw = (int16_t)(vel_data.angular.z*180/M_PI);
  data.auto_vx = (int16_t)(vel_data.linear.x*1000);
  data.auto_vy = (int16_t)(vel_data.linear.y*1000);
}

void vision_callback(const vision_unit::armor_msg& vision_data)
{
  if(vision_data.detected == true)
  {
    data.vision_data_status = 1;
    data.vision_data_x = vision_data.x;
    data.vision_data_y = vision_data.y;
    data.vision_data_d = vision_data.d;
  }
  else
  {
    data.vision_data_status = 0;
    data.vision_data_x = 0;
    data.vision_data_y = 0;
    data.vision_data_d = 0;
  }

}

int main(int argc, char *argv[])
{
  ros::init(argc, argv, "serialWrite");
  ros::NodeHandle nh;
  ros::Rate loopRate(100);
  ros::Publisher dataPub;

  ros::Subscriber sub = nh.subscribe("cmd_vel", 5, vel_callback);
  ros::Subscriber sub_vision = nh.subscribe("armor_info", 5, vision_callback);

  bool sucess = car_comm_write.comm_write::write_setup();

  if (sucess == false)
  {
    perror("Cannot open the serial, error!");
    return -1;
  }

  while(nh.ok())
  {
    ros::spinOnce();
    car_comm_write.write_data(data);
    loopRate.sleep();
  }

  return 0;
}
