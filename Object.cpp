#include "Object.h"

Object::Object()
{
    //set values for default constructor
    setType("Object");
    setColor(cv::Scalar(0,0,0));

}

Object::Object(std::string name)
{
    setType(name);

    if(name=="blue")
    {

        setHSVmin(cv::Scalar(92,0,0));
        setHSVmax(cv::Scalar(124,256,256));

        //BGR value for Green:
        setColor(cv::Scalar(255,0,0));
    }
    if(name=="green")
    {

        setHSVmin(cv::Scalar(34,50,50));
        setHSVmax(cv::Scalar(80,220,200));

        //BGR value for Yellow:
        setColor(cv::Scalar(0,255,0));
    }
    if(name=="yellow")
    {

        setHSVmin(cv::Scalar(20,124,123));
        setHSVmax(cv::Scalar(30,256,256));

        //BGR value for Red:
        setColor(cv::Scalar(0,255,255));
    }
    if(name=="red")
    {

        setHSVmin(cv::Scalar(0,200,0));
        setHSVmax(cv::Scalar(19,255,255));

        //BGR value for Red:
        setColor(cv::Scalar(0,0,255));
    }
}

Object::~Object(void)
{
}

int Object::getXPos()
{
    return Object::xPos;
}

void Object::setXPos(int x)
{
    Object::xPos = x;
}

int Object::getYPos()
{
    return Object::yPos;
}

void Object::setYPos(int y)
{
    Object::yPos = y;
}

cv::Scalar Object::getHSVmin()
{
    return Object::HSVmin;
}

cv::Scalar Object::getHSVmax()
{
    return Object::HSVmax;
}

void Object::setHSVmin(cv::Scalar min)
{
    Object::HSVmin = min;
}

void Object::setHSVmax(cv::Scalar max)
{
    Object::HSVmax = max;
}