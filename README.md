# Research Track Assignment 2

The main goal of this assignment is to implement a ROS package in which we develop 3 nodes:
* Node A : This node implements an action client that allows the user to set a target goal or cancel it. The node also publishes and velocity as a costum message, which includes the values for (x, y, x_vel, y_vel) based the values published in "/odom" topic.
* Node B : This node is a service node that when called prints the number or reached and canceled goals.
* Node C : This node subscribes to the robot "position_and_velocity" using costum message, and prints the distance to the goal as well as the robot average speed.

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

