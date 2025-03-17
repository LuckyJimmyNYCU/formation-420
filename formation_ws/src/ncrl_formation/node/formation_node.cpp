#include <ros/ros.h>
#include "ros/param.h"
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Twist.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <cstdio>
#include <unistd.h>
#include <termios.h>
#include <fcntl.h>
#include "getch.h"
#include <cmath>
#include <tf/tf.h>
#include <geometry_msgs/Point.h>
#include <queue>
#include <std_msgs/Int32.h>


#define gravity 9.806
using namespace std;

bool init = false;
bool start = false;
//set control P-gain
double KPx=1, KPy=1, KPz=1.2;
//float KPx=5, KPy=5, KPz=1.2;
double KPyaw = 1;
double roll = 0, pitch = 0, yaw = 0;
geometry_msgs::TwistStamped leader_vel;

int start_all_drone = 0;

class MAV
{
private:
    geometry_msgs::PoseStamped MAV_pose;
    ros::Subscriber pose_sub;
    queue<geometry_msgs::PoseStamped> pose_queue;
    int id;
    double roll;
    double pitch;
    double yaw;


public:
    MAV(ros::NodeHandle nh, string subTopic, int ID);
    void pose_cb(const geometry_msgs::PoseStamped::ConstPtr& msg);
    geometry_msgs::PoseStamped getPose();
    double getYaw();
    static int UAV_ID;
    static int delay_step;    
    bool gotPose;
};

int MAV::UAV_ID = 0;
int MAV::delay_step = 0;

MAV::MAV(ros::NodeHandle nh, string subTopic, int ID)
{
    pose_sub = nh.subscribe<geometry_msgs::PoseStamped>(subTopic, 10, &MAV::pose_cb, this);
    id = ID;
    gotPose = false;
}

void MAV::pose_cb(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
	if(!gotPose)
		gotPose = true;

    if(id != UAV_ID)
    {
	pose_queue.push(*msg);
	if(pose_queue.size() >= delay_step)
	{
	    MAV_pose = pose_queue.front();
	    pose_queue = queue<geometry_msgs::PoseStamped>();
	}
    }
    else
	   MAV_pose = *msg;

    tf::Quaternion Q(
        MAV_pose.pose.orientation.x,
        MAV_pose.pose.orientation.y,
        MAV_pose.pose.orientation.z,
        MAV_pose.pose.orientation.w);
    tf::Matrix3x3(Q).getRPY(roll,pitch,yaw);
}

geometry_msgs::PoseStamped MAV::getPose(){return MAV_pose;}
double MAV::getYaw(){return yaw;}

void leader_vel_cb(const geometry_msgs::TwistStamped::ConstPtr& msg)
{
    leader_vel = *msg;
}

void start_cb(const std_msgs::Int32 msg)
{
    start_all_drone = msg.data;
}

void laplacian_remap(XmlRpc::XmlRpcValue laplacian_param, bool laplacian_map[][5])
{
    int k = 0;
    for(int i = 0; i < 5; i++)
    {
        for(int j = 0; j < 5; j++)
        {
	    ROS_ASSERT(laplacian_param[k].getType() == XmlRpc::XmlRpcValue::TypeInt);
            int a = laplacian_param[k];
	    laplacian_map[i][j] = a!=0;
	    k++;
        }
    }
}

geometry_msgs::TwistStamped vel_limit(geometry_msgs::TwistStamped desired_vel, float limit)
{
    float vel_norm = sqrt(pow(desired_vel.twist.linear.x, 2) + pow(desired_vel.twist.linear.y, 2) + pow(desired_vel.twist.linear.z, 2));
    if(vel_norm > limit)
    {
        desired_vel.twist.linear.x *= limit/vel_norm;
        desired_vel.twist.linear.y *= limit/vel_norm;
        desired_vel.twist.linear.z *= limit/vel_norm;
    }

    return desired_vel;
}

void bound_yaw(double* yaw)
{
    if(*yaw>M_PI)
        *yaw = *yaw - 2*M_PI;
    else if(*yaw<-M_PI)
        *yaw = *yaw + 2*M_PI;
}

void follow_yaw(geometry_msgs::TwistStamped& desired_vel, double current_yaw, double desired_yaw)
{
    double err_yaw, u_yaw;
    err_yaw = desired_yaw - current_yaw;
    bound_yaw( &err_yaw );
    u_yaw = 0.5*err_yaw;
    desired_vel.twist.angular.z = u_yaw;

}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "formation");
    ros::NodeHandle nh;

    ros::param::get("UAV_ID", MAV::UAV_ID);
    ros::param::get("delay_step", MAV::delay_step);

    //Subscriber
    MAV mav[5] = {MAV(nh, "/leader_pose", 0),
                      MAV(nh, "/MAV1/mavros/local_position/pose_initialized", 1),
                      MAV(nh, "local/MAV2/local_position/pose_initialized", 2),
                  MAV(nh, "/MAV3/mavros/local_position/pose_initialized", 3),
                  MAV(nh, "/MAV4/mavros/local_position/pose_initialized", 4)};
    /*if(MAV::UAV_ID == 1){
        MAV mav[5] = {MAV(nh, "/leader_pose", 0),
                      MAV(nh, "/MAV1/mavros/local_position/pose_initialized", 1),
                      MAV(nh, "local/MAV2/local_position/pose_initialized", 2),
                  MAV(nh, "/MAV3/mavros/local_position/pose_initialized", 3),
                  MAV(nh, "/MAV4/mavros/local_position/pose_initialized", 4)};
    }else if(MAV::UAV_ID == 2){
        MAV mav[5] = {MAV(nh, "/leader_pose", 0),
                      MAV(nh, "local/MAV1/local_position/pose_initialized", 1),
                      MAV(nh, "/MAV2/mavros/local_position/pose_initialized", 2),
                  MAV(nh, "/MAV3/mavros/local_position/pose_initialized", 3),
                  MAV(nh, "/MAV4/mavros/local_position/pose_initialized", 4)};
    }*/
    ros::Subscriber leader_vel_sub = nh.subscribe<geometry_msgs::TwistStamped>("/leader_vel", 10, leader_vel_cb);
    ros::Subscriber uav_start_sub = nh.subscribe<std_msgs::Int32>("/uav_start", 10, start_cb);
    //Publisher    
    ros::Publisher desired_vel_pub = nh.advertise<geometry_msgs::TwistStamped>("desired_velocity_raw", 100);


    XmlRpc::XmlRpcValue laplacian_param;
    nh.getParam("laplacian", laplacian_param);
    ROS_ASSERT(laplacian_param.getType() == XmlRpc::XmlRpcValue::TypeArray);
    bool laplacian_map[5][5] = {0};
    laplacian_remap(laplacian_param, laplacian_map);

    double d = 4;
    double leader_uav_vector_x[5] = {0, d, 1/2*sqrt(3)*d, 0, 0};  //active: mav2, mav4 
    double leader_uav_vector_y[5] = {0, 0,        -1/2*d, 0, 0};  //vector y from leader to uav
    double relative_map_x[5][5];
    double relative_map_y[5][5];
    for(int i = 0 ; i<5; i++){
        for(int j = 0 ; j<5 ; j++){
            relative_map_x[i][j] = leader_uav_vector_x[i] - leader_uav_vector_x[j];
            relative_map_y[i][j] = leader_uav_vector_y[i] - leader_uav_vector_y[j];
        }
    }
    cout << "relative map x\n";
    for(int i = 0;i<5;i++){
        for(int j=0;j<5;j++){
            cout << relative_map_x[i][j] << "\t";
        }
        cout << "\n";
    }
    cout << "relative map y\n";
    for(int i = 0;i<5;i++){
        for(int j=0;j<5;j++){
            cout << relative_map_y[i][j] << "\t";
        }
        cout << "\n";
    }
    // The setpoint publishing rate MUST be faster than 2Hz.
    ros::Rate rate(100);

    geometry_msgs::TwistStamped desired_vel;

	int n = 0;
	float leaderGain = 1;
	float followerGain = 1;
	float gain = 1;

	for(int i = 1; i < 5; i++)
	{
		if(mav[i].gotPose && i != MAV::UAV_ID)
			n++;	
	}

    while (ros::ok()) {
        desired_vel.twist.linear.x = 0;
        desired_vel.twist.linear.y = 0;
        desired_vel.twist.linear.z = 0;

	leaderGain = 1.0;
	if(n > 0)
	{
		leaderGain = 0.7;
		followerGain = (1-leaderGain)/n;
	}

        for(int i =0 ;i<5;i++)
        {
            if(laplacian_map[MAV::UAV_ID][i] == 1)
            {
		    double effect_x = mav[i].getPose().pose.position.x
                                            - mav[MAV::UAV_ID].getPose().pose.position.x
                                            + relative_map_x[MAV::UAV_ID][i];
		    double effect_y = mav[i].getPose().pose.position.y
                                            - mav[MAV::UAV_ID].getPose().pose.position.y
                                            + relative_map_y[MAV::UAV_ID][i];
		    double effect_z = mav[i].getPose().pose.position.z
                                            - mav[MAV::UAV_ID].getPose().pose.position.z;
		    
		    if(i==0)
			    gain = leaderGain;
		    else if(i>=1)
			    gain = followerGain;

		    desired_vel.twist.linear.x += gain*effect_x;              
		    desired_vel.twist.linear.y += gain*effect_y;
		    desired_vel.twist.linear.z += gain*effect_z;

            }
        }
        desired_vel.twist.linear.x += leader_vel.twist.linear.x;
        desired_vel.twist.linear.y += leader_vel.twist.linear.y;
        desired_vel.twist.linear.z += leader_vel.twist.linear.z;

        desired_vel = vel_limit(desired_vel, 4);
        desired_vel_pub.publish(desired_vel);

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}
