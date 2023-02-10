#! /usr/bin/env python3

import rospy
import assignment_2_2022.msg

from std_srvs.srv import Empty,EmptyResponse

# Global variables needed
reached_goals = 0  # to count the number of reached goals
canceled_goals = 0 # to count the number of canceled goals

## Defining functions ##

## Subscriber callback function
# This function checks the status of the robot
# to see if the robot reached its goaled or if is cancelled 

def sub_callback(data):
	global canceled_goals
	global reached_goals
	if(data.status.status == 2): # case goal canceled
		canceled_goals = canceled_goals + 1
		print("canceled goal")
	elif(data.status.status == 3): # case the robot reached the goal
		reached_goals = reached_goals + 1
		print("reached goal")


## Service callback function
# This function returns the number or reachhed and canceled goals

def srv_callback(req):
	global canceled_goals
	global reached_goals
	print(f"The number of reached goals is : {reached_goals} \nnumber of canceled goals is : {canceled_goals}")
	return EmptyResponse()	


## Main function ##

if __name__ == "__main__":
	rospy.init_node("node_b") # initialize the node
	service = rospy.Service("reach_cancel", Empty, srv_callback)
	subscribe = rospy.Subscriber('/reaching_goal/result', assignment_2_2022.msg.PlanningActionResult, sub_callback)
	rospy.spin()

