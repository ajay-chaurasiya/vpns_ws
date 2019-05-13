//
// Created by ajay on 10/5/19.
//

#ifndef VISUALPOSITIONING_NAVIGATIONCOMMANDS_H
#define VISUALPOSITIONING_NAVIGATIONCOMMANDS_H


#include <stdio.h>
#include <sstream>
#include "ros/ros.h"
#include "vps/pathDetails.h"

class navigation {
public:
    static void positionDetails (int &xo, int &yo, int &xn, int &yn, int &dx, int &dy, int &ao, ros::Publisher &pub);
};


#endif //VISUALPOSITIONING_NAVIGATIONCOMMANDS_H
