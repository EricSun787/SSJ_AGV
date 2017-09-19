/*************************************************************************
	> File Name: handle_control.cpp
	> Author: Sunshengjin
	> Mail: 1012116832@qq.com
	> Created Time: 2017年09月17日 星期日 18时09分04秒
 ************************************************************************/
#include <ros/ros.h>
#include <iostream>
#include <sensor_msgs/Joy.h>
#include <geometry_msgs/Twist.h>

using namespace std; 

geometry_msgs::Twist cmd;
//sensor_msgs::Joy     handle_sig;
float L_speed = 0;
float A_speed = 0;


ros::Subscriber handle_sub;
ros::Publisher  cmd_pub;

float L_rate = 0.5;
float A_rate = 1;

void handle_sub_callback(const sensor_msgs::Joy& handle)
{
    if(handle.axes[3] || handle.axes[4] )
    {
    L_speed = handle.axes[4] * L_rate;
    A_speed = handle.axes[3] * A_rate;
    }
    else if(handle.buttons[3])
    {
        L_speed = L_rate;
        A_speed = 0;
    }
    else if(handle.buttons[0])
    {
        L_speed = -L_rate;
        A_speed = 0;
    }
    else if(handle.buttons[2])
    {
        A_speed = A_rate;
        L_speed = 0;
    }
    else if(handle.buttons[1])
    {
        A_speed = -A_rate;
        L_speed = 0;
    }
    else
    {
        A_speed = 0;
        L_speed = 0;
    }


    printf("Linear speed is [%f]  , Angular speed is [%f]  \n",L_speed,A_speed);

    cmd.linear.x  = L_speed;
    cmd.angular.z = A_speed;

//    cmd_pub.publish(cmd); 

}

int main(int argc,char** argv)
{
    ros::init(argc,argv,"Handle_control");
    ros::NodeHandle h;
    ros::Rate rate(50);
    
    handle_sub = h.subscribe("/joy",100,handle_sub_callback);
    cmd_pub    = h.advertise<geometry_msgs::Twist>("/cmd_vel",100);

    //ros::spin();
    while(ros::ok)
    {
        cmd_pub.publish(cmd);
        ros::spinOnce();
        rate.sleep();

    }

    return 0;
}

