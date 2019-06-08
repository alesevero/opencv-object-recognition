
#pragma once
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/objdetect/objdetect.hpp"
#include "opencv/cv.h"
#include <iostream>
#include <stdio.h>
#include <string>
#include <stdlib.h>

class Object
{
public:
    Object();
    ~Object(void);

    Object(std::string name);

    int getXPos();
    void setXPos(int x);

    int getYPos();
    void setYPos(int y);

    cv::Scalar getHSVmin();
    cv::Scalar getHSVmax();

    void setHSVmin(cv::Scalar min);
    void setHSVmax(cv::Scalar max);

    std::string getType(){return type;}
    void setType(std::string t){type = t;}

    cv::Scalar getColor(){
        return Color;
    }
    void setColor(cv::Scalar c){

        Color = c;
    }

private:

    int xPos, yPos;
    std::string type;
    cv::Scalar HSVmin, HSVmax;
    cv::Scalar Color;
};