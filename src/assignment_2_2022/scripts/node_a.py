#! /usr/bin/env python3

import rospy
import actionlib
import geometry_msgs.msg
import assignment_2_2022.msg
import nav_msgs.msg

from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry
from assignment_2_2022.msg import position

### Define functions ###

## Callback function for subsription to odometry
# The function gets the current odometry data from "/odom"
# and publish it using costum messages in "/position_and_velocity"

def sub_callback(data):
	costum_msg = position()
	costum_msg.x_pos = data.pose.pose.position.x # get the current x position 
	costum_msg.y_pos = data.pose.pose.position.y # get the current y position
	costum_msg.x_velocity_val = data.twist.twist.linear.x # get the current x velocity value 
	costum_msg.y_velocity_val = data.twist.twist.linear.y # get the current y velocity value 
	rospy.loginfo(rospy.get_caller_id() + " Odometry data received !\n %s",data)	
	publish_msg(costum_msg) # Call function to publish the data 



## function for publishing odometry data 
# This function publish the current odometry data in in "/position_and_velocity"

def publish_msg(costum_msg):
	#Publish the data on costum_msg
	publisher = rospy.Publisher("position_and_velocity",position,queue_size = 10)
	publisher.publish(costum_msg)
	print("Message published !")
	main()



## Function to ask the user to inter the target goal
# This function allows the user to inter the desired goal it wants to reach
# and send it to the client server

def set_target():
	x = float(input("Enter the value os the x position: "))
	y = float(input("Enter the value os the Y position: "))	
	print(f'Position entered sucessefully: \n x position: {x} \n y position: {y}')	
	#wait for the server
	client.wait_for_server()	
	goal = PoseStamped()	
	goal.pose.position.x = x
	goal.pose.position.y = y
	goal = assignment_2_2022.msg.PlanningGoal(goal)		
	client.send_goal(goal) #sending a goal to the action server
	

## Cancel target function
def cancel_target():
	client.cancel_goal()
	print("Goal canceled !\n")
	main()


## wrong target fuction
def wrong_target():
	print("The input is wrong, repeat again !\n")
	main()


## Main function
def main():
	print("## Robot Control ##\n")
	print("1. Target\n")
	print("2. Cancel\n")
	print("3. Exit\n")	
	option = input("Select your option !\n")		
	if (option == "1"):
		print("\nsetting target ...\n")
		set_target()
		print("\nset target!\n")
	elif (option == "2"):
		cancel_target()
	elif (option =="3"):
		exit()
	else:
		wrong_target()

if __name__ == "__main__":
	rospy.init_node("node_a") # initialize the node
	client = actionlib.SimpleActionClient('/reaching_goal',assignment_2_2022.msg.PlanningAction)
	Odometry_sub = rospy.Subscriber("/odom", Odometry,sub_callback)
	rospy.spin()
	
