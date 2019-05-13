#!/usr/bin/env python

import rospy
from navigation.msg import pathDetails

import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BOARD)

GPIO.setup(05, GPIO.OUT)
GPIO.setup(07, GPIO.OUT)
GPIO.setup(11, GPIO.OUT)
GPIO.setup(13, GPIO.OUT)
GPIO.setup(15, GPIO.OUT)
GPIO.setup(16, GPIO.OUT)

pwm1=GPIO.PWM(11, 100)
pwm2=GPIO.PWM(16, 100)
pwm1.start(0)
pwm2.start(0)

GPIO.output(05, False)
GPIO.output(07, False)
GPIO.output(11, False)
GPIO.output(13, False)
GPIO.output(15, False)
GPIO.output(16, False)

pwm1.ChangeDutyCycle(50)
pwm2.ChangeDutyCycle(50)

def clockwise():
   GPIO.output(05, True)
   GPIO.output(07, False)
   GPIO.output(13, False)
   GPIO.output(15, True)
   
   GPIO.output(11, True)
   GPIO.output(16, True)

def counterClockwise():
   GPIO.output(05, False)
   GPIO.output(07, True)
   GPIO.output(13, True)
   GPIO.output(15, False)
   
   GPIO.output(11, True)
   GPIO.output(16, True)

def forward():
   GPIO.output(05, True)
   GPIO.output(07, False)
   GPIO.output(13, True)
   GPIO.output(15, False)
   
   GPIO.output(11, True)
   GPIO.output(16, True)

def backward():
   GPIO.output(05, False)
   GPIO.output(07, True)
   GPIO.output(13, False)
   GPIO.output(15, True)
   
   GPIO.output(11, True)
   GPIO.output(16, True)
   
def right():
   GPIO.output(05, True)
   GPIO.output(07, False)
   GPIO.output(13, False)
   GPIO.output(15, False)
   
   GPIO.output(11, True)
   GPIO.output(16, True)
   
def left():
   GPIO.output(05, False)
   GPIO.output(07, False)
   GPIO.output(13, True)
   GPIO.output(15, False)
   
   GPIO.output(11, True)
   GPIO.output(16, True)
   
def stop():
   GPIO.output(05, False)
   GPIO.output(07, False)
   GPIO.output(13, False)
   GPIO.output(15, False)
   
   GPIO.output(11, False)
   GPIO.output(16, False)

# Initialize the variables
ml = 1;
mr = 1;

# Run our code in a loop until node is shutdown
def robot_callback(msg):

   print ('robot_callback function called')
   print ('Destination (dx,dy) = ', msg.destX, msg.destY)
   print ('Current position (x,y) = ', msg.oldX, msg.oldY)
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
   
   if (msg.oldX != msg.destX or msg.oldY != msg.destY):
	   # Conditional loop to check the direction of robot of target and rectify it
	   if (abs(msg.newAngle - msg.oldAngle) >= 5):
	   	print ('oldAngle = ', msg.oldAngle) 
	   	if (msg.oldAngle > msg.newAngle):
	   		if ((msg.oldAngle - msg.newAngle) <= 180):
	   			print('Rotate CW \n')
	   			clockwise()
	   		elif ((msg.oldAngle - msg.newAngle) > 180):
	   			print ('Rotate CCW \n')
	   			counterClockwise()
	   	if (msg.newAngle > msg.oldAngle):
	   		if ((msg.newAngle - msg.oldAngle) <= 180):
	   			print ('Rotate CCW \n')
	   			counterClockwise()
	   		elif ((msg.newAngle - msg.oldAngle) > 180):
	   			print ('Rotate CW \n')
	   			clockwise()
	   			
	   elif (abs(msg.newAngle - msg.oldAngle) < 5):
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
	stop()

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

stop()

# Spin to avoid exiting
rospy.spin()
