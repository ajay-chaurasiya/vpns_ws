#!/usr/bin/env python

import rospy
from vps.msg import pathDetails

# Initialize the node
rospy.init_node('commandsGenerator')

# Create a Publisher
pub = rospy.Publisher('commandsGenerator', pathDetails, queue_size=10)

# Create a rate
rate = rospy.Rate(1) # 1 message per second

# Initialize the variables
ml = 1;
mr = 1;

# Run our code in a loop until node is shutdown
while not rospy.is_shutdown():
   # Create string
   text = 'Left motor: ' + str(ml) + 'Right motor: ' + str(mr)
   
   # Load everything into the message
   message = pathDetails(destX = ml, destY = mr, text = text)
   
   # Publish the motor commands
   pub.publish(message)
   
   # Sleep to fix loop rate
   rate.sleep()
