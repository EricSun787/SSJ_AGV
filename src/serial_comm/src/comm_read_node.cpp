#include "ros/ros.h"
#include <std_msgs/String.h>
#include "comm_read.h"

int main(int argc, char *argv[])
{
  ros::init(argc, argv, "serialRead");
  ros::NodeHandle nh;
  ros::Publisher publisher;
  publisher = nh.advertise<serial_comm::car_speed>("car_info", 100);

  autocar::serial_mul::comm_read car_comm_read;
  ros::Rate loopRate(50);

  //set up the serial
  bool sucess = car_comm_read.comm_read::read_setup();
  if (sucess == false)
  {
    perror("error!");
    return -1;
  }
  car_comm_read.read_init();

  while(nh.ok())
  {
    ros::spinOnce();
    loopRate.sleep();
    car_comm_read.read_data();
    printf("YawAngle:  %f\n",car_comm_read.pubData.angle);
    printf("ForeBack:  %f\n",car_comm_read.pubData.v_x);
    printf("LeftRight: %f\n",car_comm_read.pubData.v_y);
    printf("Rotate:    %f\n",car_comm_read.pubData.v_r);
    printf("PanYaw:    %f\n",car_comm_read.pubData.yaw*(180/M_PI));
    printf("---------------------\n");
    publisher.publish(car_comm_read.pubData);
  }
  return 0;
}
