#!/bin/bash
. /opt/ros/kinetic/setup.bash
. ~/work/superg_agv/devel/setup.bash
{
    mate-terminal -t "XXD_ros" -x bash -c "roscore;exec bash"
}&
sleep 3s

sleep 1s
{
    mate-terminal -t "rviz_visualization" -x bash -c "rosrun rviz_monitor rviz_visualization_pub;exec bash"
}&
 
sleep 1s
{
    mate-terminal --window -t "robot_state" -e 'bash -c "rosrun robot_state_publisher robot_state_publisher;exec bash"'\
    --tab -t "joint_state" -e 'bash -c "rosrun joint_state_publisher joint_state_publisher;exec bash"'\
    --tab -t "rviz" -e 'bash -c "rviz -d ~/work/superg_agv/src/monitor/rviz_monitor/monitor.rviz;exec bash"'\
    --tab -t "hmi_control_ad_node" -e 'bash -c "rosrun rviz_monitor hmi_control_ad_node;exec bash"'\
    --tab -t "rqt_reconfigure" -e 'bash -c "rosrun rqt_reconfigure rqt_reconfigure;exec bash"'\
    --tab -t "map routing" -x bash -c "cd ~/work/superg_agv/src/routing/;python3 routing.py;exec bash"
}&

sleep 1s
{
    mate-terminal --window -t "can_wr" -e 'bash -c "rosrun can_wr can_wr_n;exec bash"'\
    --tab -t "tanway_m16_lidar_node" -e 'bash -c "rosrun tanway_lidar_driver tanway_m16_lidar_node;exec bash"'\
    --tab -t "tanway_m16_syncLidars" -e 'bash -c "rosrun tanway_lidar_driver tanway_m16_syncLidars;exec bash"'\
    --tab -t "cannet_radar_node" -x bash -c "rosrun conti_radar_driver cannet_radar_node;exec bash"
}&

sleep 1s
{
    mate-terminal -t "velodyne" -x bash -c "roslaunch ~/work/superg_agv/src/drivers/velodyne_driver/launch/nodelet_manager.launch;exec bash"
}&

sleep 1s
{
    mate-terminal -t "com2agv" -x bash -c "rosrun com2veh com2agv 1;exec bash"
}&

sleep 1s
{
    mate-terminal -t "KeyboardTeleop" -x bash -c "rosrun com2veh KeyboardTeleop;exec bash"
}&

sleep 1s
{
    mate-terminal -t "pl_sender" -x bash -c "rosrun gps_imu pl_sender 1;exec bash"
}&

sleep 1s
{
    mate-terminal --window -t "lidar_location_node" -e 'bash -c "rosrun lidar_location lidar_location_node;exec bash"'\
    --tab -t "multiple_lidar_fusion_node" -x bash -c "rosrun multiple_lidar_fusion multiple_lidar_fusion_node;exec bash"
}&

sleep 1s
{
    mate-terminal -t "location_FusionCenter" -x bash -c "rosrun data_fusion FusionCenter;exec bash"
}&

sleep 1s
{
    mate-terminal -t "obstacle_detection" -x bash -c "rosrun perception_lidar obstacle_detection;exec bash"
}&

sleep 1s
{
    mate-terminal -t "perception_fusion" -x bash -c "rosrun perception_fusion perception_fusion;exec bash"
}&

sleep 1s
{
    mate-terminal -t "planning_node" -x bash -c "rosrun planning planning_node;exec bash"
}&

sleep 1s
{
    mate-terminal -t "ref_sender" -x bash -c "rosrun map ref_sender 64.6663 5.04956;exec bash"
}&

sleep 1s
{
    mate-terminal -t "planning_sender" -x bash -c "rosrun map planning_sender_pub;exec bash"
}&

sleep 1s
{
    mate-terminal -t "control" -x bash -c "rosrun control control 2;exec bash"
}&

sleep 1s
{
    mate-terminal -t "per_sender" -x bash -c "rosrun perception per_sender_pub;exec bash"
}&





