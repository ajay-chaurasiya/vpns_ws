//
// Created by ajay on 4/4/19.
//

//#include <opencv/cv.hpp>
//#include <opencv2/core.hpp>
//#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv/highgui.h>
#include <opencv2/aruco.hpp>
#include <opencv2/calib3d.hpp>
#include <opencv2/imgproc.hpp>
//#include <opencv2/videoio.hpp>

#include <sstream>
#include <iostream>
#include <vector>
#include <stdio.h>
#include "ros/ros.h"
#include "vps/pathDetails.h"

#include "calibration.h"
#include "positioning.h"
#include "aStarSearch.h"

using namespace std;
using namespace cv;

int main(int argc, char** argv)
{
//    Initialize RnT matrices to store 'point ot camera', 'camera to world' and 'point to world' coordinates
    float CtoW[4][4], PtoC[4][4];
    float PtoW[4][4] = { 1,  0,  0,     0,
                         0,  1,  0,     0,
                         0,  0,  1,     0,
                         0,  0,  0,     1};

    /* Initialize a grid to represent map of the envirenment
    Description of the Grid-
    1--> The cell is not blocked
    0--> The cell is blocked */
    int grid[ROW][COL] =
            {
                    { 1, 1, 1, 1, 0, 1, 1, 1},
                    { 1, 1, 1, 0, 1, 1, 0, 0},
                    { 1, 0, 1, 1, 1, 1, 1, 0},
                    { 1, 1, 1, 1, 0, 1, 1, 0},
                    { 1, 1, 0, 1, 1, 0, 1, 1},
                    { 1, 0, 1, 1, 0, 0, 1, 1},
                    { 1, 1, 0, 1, 1, 1, 0, 1},
                    { 1, 0, 1, 1, 0, 1, 1, 1}
            };
            
    // Initialize the node
    ros::init(argc, argv, "vps");
    ros::NodeHandle n;
    
    // Create a publisher
    ros::Publisher pub = n.advertise<vps::pathDetails>("navigationDetails", 10);
    

    cout << "\n Enter initial position (x,y,z) in metre of AGV in WCS: ";
    cin >> PtoW[0][3] >> PtoW[1][3] >> PtoW[2][3];

    calibration(CtoW, PtoC, PtoW);

    positioning(PtoW, CtoW, PtoC, grid, pub);

    return 0;
}
