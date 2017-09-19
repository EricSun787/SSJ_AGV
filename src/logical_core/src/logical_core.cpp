#include "logical_core.h"

LogicalCore::LogicalCore(tf::TransformListener &tf) : ac_("move_base", true), car_state_(IDLE_STATE), tf_(tf)
{
    fillPatrolList();
    ros::NodeHandle nh_cam;
    ros::Rate loop(30);
    //car_pos        = nh_cam.subscribe<geometry_msgs::PoseWithCovarianceStamped>("amcl_pose", 10, boost::bind(&LogicalCore::getCarPos, this, _1));
    send_goal_srv_ = nh_cam.subscribe<move_base_msgs::MoveBaseGoal>("camera_goal", 10, boost::bind(&LogicalCore::getCameraGoal, this, _1));
    sub_current_pos = nh_cam.subscribe<geometry_msgs::PoseWithCovarianceStamped>("amcl_pose", 5, boost::bind(&LogicalCore::pos_callback, this, _1));
    ROS_INFO("Preparation complete to get goals from camera.");
    ROS_INFO("Waiting for action server to start.");
    ac_.waitForServer();
    ROS_INFO("Action server started, ready for sending goals.");

    //goal_.target_pose.pose.x     = 0.0;
    //old_goal_.target_pose.pose.x = 0.0;
    p_point_mode_   = new PointMode(this);
    p_patrol_mode_  = new PatrolMode(this);
    p_shooting_mode_= new ShootingMode(this);
    p_mission_mode_ = p_patrol_mode_;

    old_enemy_global_goal_.pose.position.x = 0;
    old_enemy_global_goal_.pose.position.y = 0;

    while(ros::ok())
    {
        stateMachine();
        ros::spinOnce();
        loop.sleep();
    }
}
void LogicalCore::fillPatrolList()
{
    move_base_msgs::MoveBaseGoal temp_goal;
    temp_goal.target_pose.header.frame_id = "map";

    cv::FileStorage fs("list.yaml", cv::FileStorage::READ);
    if( !fs.isOpened() ) // if we have file with parameters, read them
    {
        std::cout<<"ERROR, cannot open list.yaml!"<<std::endl;
    }
    cv::FileNode list_n = fs["features"];
    cv::FileNodeIterator it = list_n.begin(), it_end = list_n.end();
    for (; it != it_end; ++it)
    {
        temp_goal.target_pose.pose.position.x   = (double)(*it)["x"];
        temp_goal.target_pose.pose.position.y   = (double)(*it)["y"];
        std::cout << (double)(*it)["x"] << "  ";
        std::cout << (double)(*it)["y"] << std::endl;
        temp_goal.target_pose.pose.orientation.w = 1.;
        patrol_list_.push_back(temp_goal);
    }
    std::reverse(patrol_list_.begin(), patrol_list_.end());
    fs.release();
}

geometry_msgs::PoseStamped LogicalCore::goalToGlobalFrame(const geometry_msgs::PoseStamped& goal_pose_msg)
{
    std::string global_frame = "map";
    tf::Stamped<tf::Pose> goal_pose, global_pose;
    poseStampedMsgToTF(goal_pose_msg, goal_pose);

    //just get the latest available transform... for accuracy they should send
    //goals in the frame of the planner
    goal_pose.stamp_ = ros::Time();

    try{
        tf_.transformPose(global_frame, goal_pose, global_pose);
    }
    catch(tf::TransformException& ex){
        ROS_WARN("Failed to transform the goal pose from %s into the %s frame: %s",
                 goal_pose.frame_id_.c_str(), global_frame.c_str(), ex.what());
        return goal_pose_msg;
    }

    geometry_msgs::PoseStamped global_pose_msg;
    tf::poseStampedTFToMsg(global_pose, global_pose_msg);
    return global_pose_msg;
}

double LogicalCore::distance(const geometry_msgs::PoseStamped& p1, const geometry_msgs::PoseStamped& p2)
{
    return hypot(p1.pose.position.x - p2.pose.position.x, p1.pose.position.y - p2.pose.position.y);
}

void LogicalCore::getCameraGoal(const move_base_msgs::MoveBaseGoal::ConstPtr &msg)
{
    if(msg->target_pose.pose.position.z == 1)
    {
        enemy_goal_ = msg->target_pose;
        enemy_goal_.pose.position.x -= 2.0;
        enemy_global_goal_ = goalToGlobalFrame(enemy_goal_);
        //tf::Pose pose;
        //tf::poseMsgToTF(enemy_global_goal_.pose, pose);
        //double yaw = tf::getYaw(pose.getRotation());
        if(distance(enemy_global_goal_, old_enemy_global_goal_) > 1.5)
        {
            p_mission_mode_ = p_shooting_mode_;
            //goal_.target_pose.pose.orientation.w = 1.0;
            //goal_.target_pose.pose.orientation.z = 0.0;
            car_state_ = OBTAINED_GOAL_STATE;
            old_enemy_global_goal_ = enemy_global_goal_;
            goal_.target_pose = enemy_global_goal_;
            goal_.target_pose.header.stamp = ros::Time::now();
            goal_.target_pose.pose.position.z = 2;
        }
    }
    else if(msg->target_pose.pose.position.z == 0)
    {
        if(p_mission_mode_ == p_shooting_mode_)
        {
            car_state_ = IDLE_STATE;
        }
    }
}

void LogicalCore::pos_callback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr &pos)
{
    car_position.pose = pos->pose.pose;
    car_position.header = pos->header;
}


void LogicalCore::stateMachine()
{
    switch(car_state_)
    {
    case OBTAINED_GOAL_STATE:
    {
        p_mission_mode_->obtainedGoalState();
        break;
    }
    case BUSY_STATE:
    {
        p_mission_mode_->busyState();
        break;
    }
    case IDLE_STATE:
    {
        p_mission_mode_->idleState();
        break;
    }
    }
}

