//
// Created by ajay on 30/4/19.
//

#include <stdio.h>
#include <sstream>
#include "ros/ros.h"
#include "vps/pathDetails.h"

#include "navigationCommands.h"

// Main loop
void navigation::positionDetails(int &xo, int &yo, int &xn, int &yn, int &dx, int &dy, int &ao, int &xc, int &yc, ros::Publisher &pub) {

    

/*

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
*/

    
    // Create a rate
    // ros::Rate rate(1);	// 1 message per second

//    Decalare variable to store new angle of robot
    int an = 0;

    // Run our code in a loop until node is shutdown
//    while (ros::ok())
//    {
	std::cout << "old Angle 'ao' = " << ao << std::endl;
	if (ros::ok()) {
	
	// Normalize robot angle from (0 --> +180, -180) to (0 --> +360)
	if (ao < 0) {
	   ao = 180 + (180 - abs(ao));
	}
	
	
	ROS_INFO("\n old Angle ao = %d", ao);
	
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
        message.xc = xc;
        message.yc = yc;
        message.text = text.str();

        pub.publish(message);

        // Sleep to fix loop rate
        // rate.sleep();
        
        // Spin once to collect subscribed messages and call callbacks for them 
    	// ros::spinOnce();
    	}
    	
//    }
}
