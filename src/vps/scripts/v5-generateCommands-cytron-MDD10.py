#!/usr/bin/env python

import rospy
from navigation.msg import pathDetails
from time import sleep

import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BOARD)

GPIO.setup(05, GPIO.OUT)
GPIO.setup(07, GPIO.OUT)
GPIO.setup(11, GPIO.OUT)
GPIO.setup(13, GPIO.OUT)

pwm1=GPIO.PWM(07, 100)
pwm2=GPIO.PWM(13, 100)
pwm1.start(0)
pwm2.start(0)

GPIO.output(05, False)	# Dir-1
GPIO.output(07, False)	# PWM-1
GPIO.output(11, False)	# Dir-2
GPIO.output(13, False)	# PWM-2

pwm1.ChangeDutyCycle(0)
pwm2.ChangeDutyCycle(0)

def clockwise():
   GPIO.output(05, True)
   GPIO.output(07, True)
   
   pwm1.ChangeDutyCycle(25)
   pwm2.ChangeDutyCycle(25)
   
   GPIO.output(11, False)
   GPIO.output(13, True)
   return;

def counterClockwise():
   GPIO.output(05, False)
   GPIO.output(07, True)
   
   pwm1.ChangeDutyCycle(25)
   pwm2.ChangeDutyCycle(25)
   
   GPIO.output(11, True)
   GPIO.output(13, True)
   return;

def forward():
   GPIO.output(05, False)
   GPIO.output(07, True)
   
   pwm1.ChangeDutyCycle(35)
   pwm2.ChangeDutyCycle(35)
   
   GPIO.output(11, False)
   GPIO.output(13, True)
   return;

def crossTile():
   GPIO.output(05, False)
   GPIO.output(07, True)
   
   pwm1.ChangeDutyCycle(30)
   pwm2.ChangeDutyCycle(30)
   
   GPIO.output(11, False)
   GPIO.output(13, True)

   sleep(0.5)
   return;
   
def right():
   GPIO.output(05, False)
   GPIO.output(07, True)
   
   pwm1.ChangeDutyCycle(20)
   pwm2.ChangeDutyCycle(40)
   
   GPIO.output(11, False)
   GPIO.output(13, True)
   return;
   
def left():
   GPIO.output(05, False)
   GPIO.output(07, True)
   
   pwm1.ChangeDutyCycle(40)
   pwm2.ChangeDutyCycle(20)
   
   GPIO.output(11, False)
   GPIO.output(13, True)
   return;
   
def stop():
   GPIO.output(07, False)
   GPIO.output(13, False)
   pwm1.stop()
   pwm2.stop()
   return;
   
def halt():
   GPIO.output(07, False)
   GPIO.output(13, False)
   pwm1.start(0)
   pwm2.start(0)
   return;


# Run our code in a loop until node is shutdown
def robot_callback(msg):

   print ('robot_callback function called')
   print ('Destination (dx,dy) = ', msg.destX, msg.destY)
   print ('Current position (x,y) = ', msg.oldX, msg.oldY)
   yc = msg.yc/100
   xc = msg.xc/100
   yn = (msg.newY * 0.6) + 0.3
   xn = (msg.newX * 0.6) + 0.3
   print ('xc,yc = ', xc, yc)
   print ('xn,yn = ', xn, yn)
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

   lastAngle = msg.newAngle
   a = xc%0.6
   print ('*****************	xc = ', a, xc)
   
   if (msg.oldX == msg.destX and msg.oldY == msg.destY):
   	print ('Destination reached, Stop!')
	halt()
   elif ((xc%0.6)<=0.04 or (yc%0.6)<=0.04):
	crossTile()
	halt()
 
   else:
	   # Conditional loop to check the direction of robot of target and rectify it
	   if (abs(msg.newAngle - msg.oldAngle) >= 10):
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
	   			
	   elif (abs(msg.newAngle - msg.oldAngle) < 10):
	   	# Conditional loop to check if robot has reached destination else move the robot to reach
		if (msg.oldX != msg.destX or msg.oldY != msg.destY):
			print ('Moving towards destination.')
		   	
		   	if (msg.newAngle == 0):
		   		print ('Positive X direction')
		   		lastAngle = msg.newAngle
		   		if (((yc - yn) >= 0.03) and (xn > xc)):
		   		   right()
		   		   print ('Right')
		   		elif (((yn - yc) >= 0.03) and (xn > xc)):
		   		   left()
		   		   print ('Left')
		   		else:
		   		   forward()
		   		   print ('Forward')
		   		
		   	elif (msg.newAngle == 180):
		   		print ('Negative X direction')
		   		lastAngle = msg.newAngle
		   		if (((yc - yn) >= 0.03) and (xc > xn)):
		   		   left()
		   		   print ('Left')
		   		elif (((yn - yc) >= 0.03) and (xc > xn)):
		   		   right()
		   		   print ('Right')
		   		else:
		   		   forward()
		   		   print ('Forward')
		   		
		   	elif (msg.newAngle == 90):
		   		print ('Positive Y direction')
		   		lastAngle = msg.newAngle
		   		if (((xc - xn) >= 0.03) and (yn > yc)):
		   		   left()
		   		   print ('Left')
		   		elif (((xn - xc) >= 0.03) and (yn > yc)):
		   		   right()
		   		   print ('Right')
		   		else:
		   		   forward()
		   		   print ('Forward')
		   		
		   	elif (msg.newAngle == 270):
		   		print ('Negative Y direction')
		   		lastAngle = msg.newAngle
		   		if (((xc - xn) >= 0.03) and (yc > yn)):
		   		   right()
		   		   print ('Right')
		   		elif (((xn - xc) >= 0.03) and (yc > yn)):
		   		   left()
		   		   print ('Left')
		   		else:
		   		   forward()
		   		   print ('Forward')
		   		
		   	elif (msg.newAngle == 45):
		   		print ('Positive X Positive Y direction')
		   		forward()
		   	elif (msg.newAngle == 135):
		   		print ('Negative X Positive Y direction')
		   		forward()
		   	elif (msg.newAngle == 225):
		   		print ('Negative X Negative Y direction')
		   		forward()
		   	elif (msg.newAngle == 315):
		   		print ('Positive X Negative Y direction')
		   		forward()
  			

# Initialize the node
rospy.init_node('commandsGenerator')

# Create a subscriber
sub = rospy.Subscriber('navigationDetails', pathDetails, robot_callback, queue_size=1)

# Spin to avoid exiting
rospy.spin()

stop()
GPIO.cleanup()
