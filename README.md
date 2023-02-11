# Research Track Assignment 2

The main goal of this assignment is to implement a ROS package in which we develop 3 nodes:
* Node A : This node implements an action client that allows the user to set a target goal or cancel it. The node also publishes and velocity as a costum message, which includes the values for (x, y, x_vel, y_vel) based the values published in "/odom" topic.
* Node B : This node is a service node that when called prints the number or reached and canceled goals.
* Node C : This node subscribes to the robot "position_and_velocity" using costum message, and prints the distance to the goal as well as the robot average speed.

---------------------------
# Node A
As described earlier, "Node A" implements an action client that allows the user to set or cancel the target goal. Moreover, it ublishes and velocity as a costum message based the values published in "/odom" topic.

The flowchart of "Node A" is represented as follows: - OpenAI
