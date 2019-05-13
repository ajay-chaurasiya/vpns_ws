#!/usr/bin/env python

import rospy
from vps.msg import pathDetails

# Initialize the variables
ml = 1;
mr = 1;

# Run our code in a loop until node is shutdown
def robot_callback(msg):

   print ('robot_callback function called')
   if (msg.newX > msg.oldX and msg.newY == msg.oldY):
   	msg.newAngle = 0
   elif (msg.newX < msg.oldX and msg.newY == msg.oldY):
   	msg.newAngle = 180
   elif (msg.newX == msg.oldX and msg.newY > msg.oldY):
   	msg.newAngle = 90
   elif (msg.newX == msg.oldX and msg.newY < msg.oldY):
   	msg.newAngle = 270
   elif (msg.newX > msg.oldX and msg.newY > msg.oldY):
   	msg.newAngle = 45
   elif (msg.newX < msg.oldX and msg.newY > msg.oldY):
   	msg.newAngle = 135
   elif (msg.newX < msg.oldX and msg.newY < msg.oldY):
   	msg.newAngle = 225
   elif (msg.newX > msg.oldX and msg.newY < msg.oldY):
   	msg.newAngle = 315
   
   # Conditional loop to check the direction of robot of target and rectify it
   if (abs(msg.newAngle - msg.oldAngle) >= 5):
   	if (msg.oldAngle > msg.newAngle):
   		if ((msg.oldAngle - msg.newAngle) <= 180):
   			print('Rotate CW \n')
   		elif ((msg.oldAngle - msg.newAngle) > 180):
   			print ('Rotate CCW \n')
   	if (msg.newAngle > msg.oldAngle):
   		if ((msg.newAngle - msg.oldAngle) <= 180):
   			print ('Rotate CCW \n')
   		elif ((msg.newAngle - msg.oldAngle) > 180):
   			print ('Rotate CW \n')
   			
   # Conditional loop to check if robot has reached destination else move the robot to reach
   if (msg.oldX != msg.destX or msg.oldY != msg.destY):
   	print ('Moving towards destination.')
   	
   	if (msg.newAngle == 0):
   		print ('Positive X direction')
   	elif (msg.newAngle == 180):
   		print ('Negative X direction')
   	elif (msg.newAngle == 90):
   		print ('Positive Y direction')
   	elif (msg.newAngle == 270):
   		print ('Negative Y direction')
   	elif (msg.newAngle == 45):
   		print ('Positive X Positive Y direction')
   	elif (msg.newAngle == 135):
   		print ('Negative X Positive Y direction')
   	elif (msg.newAngle == 225):
   		print ('Negative X Negative Y direction')
   	elif (msg.newAngle == 315):
   		print ('Positive X Negative Y direction')
   else:
   	print ('Destination reached, Stop!')

   # Create string
   text = 'Left motor: ' + str(ml) + 'Right motor: ' + str(mr)
   
   # Load everything into the message
   message = pathDetails(destX = ml, destY = mr, text = text)
   
   # Publish the motor commands
   pub.publish(message)   			

# Initialize the node
rospy.init_node('commandsGenerator')

# Create a Publisher
pub = rospy.Publisher('generatedCommands', pathDetails, queue_size=10)

# Create a subscriber
sub = rospy.Subscriber('navigationDetails', pathDetails, robot_callback, queue_size=10)

# Spin to avoid exiting
rospy.spin()
