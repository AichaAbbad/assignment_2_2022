#! /usr/bin/env python3

import rospy
import assignment_2_2022.msg
import math
import nav_msgs.msg
import actionlib

from assignment_2_2022.msg import position

### Declaring global variables ###
distance =  0.0
begin_time = 0.0
end_time = 0.0
velocity = 0.0

### Declaring the necessary functions ###

## Callback function for subsription to "position_and_velocity"
def sub_callback(data):
	global end_time, begin_time, distance, velocity
	compute_distance(data) # call the function to compute the distance to the goal


## Callback function for subsription to "/reaching_goal/result"
def sub2_callback(data):
	global end_time, begin_time, distance, velocity
	compute_velocity(data) # call the function to compute the average speed
	print(f"The distance to the goal is {distance} \nThe average speed of the robot is {velocity}")
	

## Function to compute the distance between the current
# position of the robot and goal position
def compute_distance(data):
	# This function compute thhe distance between the current
	# position of the robot and the desired goal we want to reach
	
	global begin_time, distance
	# get the desired 'x' and 'y' positions
	x_pos = rospy.get_param("/des_pos_x")
	y_pos = rospy.get_param("/des_pos_y")

	# current 'x' and 'y' positions
	x = data.x_pos
	y = data.y_pos
	begin_time = rospy.Time.now() # get the time at the current time
	
	# compute the distance to the goal 
	x_dist = x_pos - x
	y_dist = y_pos - y
	distance = math.sqrt((x_dist**2) + (y_dist**2))
	
	

## The function to compute the average velocity of the robot
def compute_velocity(data):
	global end_time, begin_time, distance, velocity
	if (data.status.status == 3): # when the robot reaches the goal
		end_time = rospy.Time.now() # get the time 
		# compute the current velocity
		time = (end_time - begin_time).to_sec()
		velocity = distance/time # compute the velocity


## Main function ##

if __name__ == "__main__":
	rospy.init_node("node_c") # initialize the node
	rospy.Subscriber("position_and_velocity", position,sub_callback)
	rospy.Subscriber('/reaching_goal/result', assignment_2_2022.msg.PlanningActionResult, sub2_callback)
	rospy.spin()


