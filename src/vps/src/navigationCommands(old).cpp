//
// Created by ajay on 30/4/19.
//

#include <stdio.h>
#include <sstream>
#include "ros/ros.h"
#include "vps/pathDetails.h"

// Main loop
int main (int argc, char **argv)
{
   // Initialize the node
   ros::init(argc, argv, "navigator");
   ros::NodeHandle n;
   
   // Create a publisher
   ros::Publisher pub = n.advertise<vps::pathDetails>("navigationDetails", 10);
   
   // Create a rate
   ros::Rate rate(1);	// 1 message per second
   
   // Declare variables
   int xo, yo, xn, yn, ao, an, dx, dy;
   
   // Load in values
   xo = 0;
   yo = 0;
   xn = 1;
   yn = 0;
   ao = 190;
   an = 0;
   dx = 1;
   dy = 0;
   
   // Run our code in a loop until node is shutdown
   while (ros::ok())
   {
      // Create string stream going with message
      std::stringstream text;
      text << "source: " << xo << yo << "destination: " << xn << yn << "robot angle: " << ao;
      
      // Create message
      vps::pathDetails message;
      
      // Load in message components
      message.oldX = xo;
      message.oldY = yo;
      message.newX = xn;
      message.newY = yn;
      message.oldAngle = ao;
      message.newAngle = an;
      message.destX = dx;
      message.destY = dy;
      message.text = text.str();
      
      pub.publish(message);
      
      // Sleep to fix loop rate
      rate.sleep();
   }
}
