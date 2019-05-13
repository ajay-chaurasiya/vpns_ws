//
// Created by ajay on 29/3/19.
//

#ifndef A_STAR_GRIDCELL_H
#define A_STAR_GRIDCELL_H

#include<bits/stdc++.h>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>

#include "ros/ros.h"

using namespace std;

#define ROW 10
#define COL 5

class aStarSearch {
public:
    // Creating aStarSearch shortcut for int, int pair type
    typedef pair<int, int> Pair;

// Creating aStarSearch shortcut for pair<int, pair<int, int>> type
    typedef pair<double, pair<int, int>> pPair;

    // A structure to hold the neccesary parameters
    struct cell
    {
        // Row and Column index of its parent
        // Note that 0 <= i <= ROW-1 & 0 <= j <= COL-1
        int parent_i, parent_j;
        // f = g + h
        double f, g, h;
    };

    bool isValid(int row, int col);

    bool isUnBlocked(int grid[][COL], int row, int col);

    bool isDestination(int row, int col, Pair dest);

    double calculateHValue(int row, int col, Pair dest);

    void north(int &i, int &j, double &gNew, double &hNew, double &fNew,
               Pair &dest, cell cellDetails[][COL], set<pPair> &openList, bool closedList[][COL], int grid[][COL], bool &foundDest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);

    void south(int &i, int &j, double &gNew, double &hNew, double &fNew,
               Pair &dest, cell cellDetails[][COL], set<pPair> &openList, bool closedList[][COL], int grid[][COL], bool &foundDest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);

    void east(int &i, int &j, double &gNew, double &hNew, double &fNew,
              Pair &dest, cell cellDetails[][COL], set<pPair> &openList, bool closedList[][COL], int grid[][COL], bool &foundDest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);

    void west(int &i, int &j, double &gNew, double &hNew, double &fNew,
              Pair &dest, cell cellDetails[][COL], set<pPair> &openList, bool closedList[][COL], int grid[][COL], bool &foundDest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);

    void northEast(int &i, int &j, double &gNew, double &hNew, double &fNew,
                   Pair &dest, cell cellDetails[][COL], set<pPair> &openList, bool closedList[][COL], int grid[][COL], bool &foundDest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);

    void northWest(int &i, int &j, double &gNew, double &hNew, double &fNew,
                   Pair &dest, cell cellDetails[][COL], set<pPair> &openList, bool closedList[][COL], int grid[][COL], bool &foundDest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);

    void southEast(int &i, int &j, double &gNew, double &hNew, double &fNew,
                   Pair &dest, cell cellDetails[][COL], set<pPair> &openList, bool closedList[][COL], int grid[][COL], bool &foundDest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);

    void southWest(int &i, int &j, double &gNew, double &hNew, double &fNew,
                   Pair &dest, cell cellDetails[][COL], set<pPair> &openList, bool closedList[][COL], int grid[][COL], bool &foundDest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);

    void directionProcess(int &i, int &j, int &k, int &l, double &gNew, double &hNew, double &fNew,
                          Pair &dest, cell cellDetails[][COL], set<pPair> &openList, bool closedList[][COL], int grid[][COL], bool &foundDest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);

    void tracePath(cell cellDetails[][COL], Pair &dest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);

    void createMap(cv::Mat &map, int grid[][COL]);

    aStarSearch();

    aStarSearch(int grid[][COL], Pair &src, Pair &dest, cv::Mat &map, cv::Mat &R, float PtoW[4][4], int &ao, ros::Publisher &pub);
};


#endif //A_STAR_GRIDCELL_H
