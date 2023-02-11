# Research Track Assignment 2

The main goal of this assignment is to implement a ROS package in which we develop 3 nodes:
* Node A : This node implements an action client that allows the user to set a target goal or cancel it. The node also publishes and velocity as a costum message, which includes the values for (x, y, x_vel, y_vel) based the values published in "/odom" topic.
* Node B : This node is a service node that when called prints the number or reached and canceled goals.
* Node C : This node subscribes to the robot "position_and_velocity" using costum message, and prints the distance to the goal as well as the robot average speed.

The overall package scheme diagram is given as follows:
![Overall scheme diagram](https://github.com/AichaAbbad/assignment_2_2022/blob/51796a15fc122b8cac24701e4a6eab64030d665c/rosgraph.png)

---------------------------
# Node A
As described earlier, "Node A" implements an action client that allows the user to set or cancel the target goal. Moreover, it ublishes and velocity as a costum message based the values published in "/odom" topic.

* The node start by creating a "SimpleActionClient".
* Subcribe to get the odometry data from "/odom".
* Call the "sub_callback" function, in which we get the current data (x, y, x_vel, y_vel).
* Call the "publish_msg" function in which we publish data on "position_and_velecity".
* Call the "main" function in which we ask the client for the desired choice: "set goal target", "cancel the goal", or "exit".

The flowchart of "Node A" is represented as follows: 

![Flowchart diagram of Node A](https://github.com/AichaAbbad/assignment_2_2022/blob/949cb0a79b6ff02652cf031174b4cd5d49c419ea/node_a.png)

--------------------------
# Installation and Running
* Run ros core:
```CMake
roscore
```
* Create a workspace:
```CMake
mkdir -p ~/workspace/src
cd workspace
cd src
catkin_make
```
* Clone the package:
```CMake
git clone https://github.com/AichaAbbad/assignment_2_2022.git
```
* Then we compile the CMake file:
```CMake
cd ~/workspace 
catkin_make
```
* Launch the project:
```CMake
roslaunch assignment_2_2022 assignment1.launch
```

After launching we get the following :
![Launching the workspace](https://github.com/AichaAbbad/assignment_2_2022/blob/86260675971d4bfff7fc1ab3b3687b4486ddcad4/Launch_screenshot.png)
The user is asked to select a choice: set target, cancel target or exit.
----
In order to get the number of reached and canceled goals, we call the service node (Node B). To call the node we use the following command line:
```CMake
rosservice call /reach_cancel
```
---
In order to print the distance to the goal and the average speed of the robot we use "Node C". Which actually prints the values ater the goal is reached.
