#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <stdio.h>
#include <termios.h>
#include <unistd.h>
#include <fcntl.h>

using namespace std;

geometry_msgs::Twist data;
float def_v = 0.3;

void init_data()
{
    data.linear.x  = 0.0;
    data.linear.y  = 0.0;
    data.linear.z  = 0.0;
    data.angular.z = 0.0;
}

void move(char cmd)
{
    init_data();
    switch(cmd)
    {
        case 'w':
            data.linear.x  =  def_v;
            break;
        case 's':
            data.linear.x  = -def_v;
            break;
        case 'a':
            data.linear.y  =  def_v;
            break;
        case 'd':
            data.linear.y  = -def_v;
            break;
        case 'r':
            data.angular.z =  def_v;
            break;
        case 'f':
            data.angular.z = -def_v;
            break;
    }
}

void kbhit()  
{  
    struct termios oldt, newt;  
    char ch;  
    int oldf;  
    tcgetattr(STDIN_FILENO, &oldt);  
    newt = oldt;  
    newt.c_lflag &= ~(ICANON | ECHO);  
    tcsetattr(STDIN_FILENO, TCSANOW, &newt);  
    oldf = fcntl(STDIN_FILENO, F_GETFL, 0);  
    fcntl(STDIN_FILENO, F_SETFL, oldf | O_NONBLOCK);  
    ch = getchar();
    tcsetattr(STDIN_FILENO, TCSANOW, &oldt);  
    fcntl(STDIN_FILENO, F_SETFL, oldf);  
    if(ch=='w'||ch=='s'||ch=='a'||ch=='d'||ch=='r'||ch=='f')  
    {
        printf("You entered a character %c.", ch);
        printf("\nPlease enter your comment:\n");
        //ungetc(ch, stdin);
        move(ch);
    }
    //else
    //    ungetc(ch, stdin);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "car_console");
    init_data();
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
    ros::Rate loop_rate(10);
    printf("Please enter your comment:\n");
    while(n.ok())
    {
        ros::spinOnce();
        kbhit();
        pub.publish(data);
        loop_rate.sleep();
    }
}
