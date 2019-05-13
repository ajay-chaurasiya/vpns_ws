# vpns_ws

Visual Positioning and Navigation System

A computer vision based project for supervisory control of AGVs using ROS framework, in a working environment.
Surveillance cameras are used as sensory inputs.
Robots are tagged with ArUco markers.
3D pose of robot in a fixed world coordinate system is estimated.
Path planning using A* is carried out to find optimal path for robot to move to its destination within working environment.
All these computations are done on a server (ROS master node) and only navigatin details are sent as message pack to robot (node-1).
System is modular enough to work in any environment.

At present, this system is capable enough to take care of only 1 robot at a time.
Existing algorithms will be scaled to take care of multiple robots and carry out positioning, path planning and navigation for all simultaneously.
