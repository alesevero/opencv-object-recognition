#include "ColorTracker.h"

const int MAX_NUM_OBJECTS=50;
const int MIN_OBJECT_AREA = 20*20;
const int FRAME_WIDTH = 1280;
const int FRAME_HEIGHT = 720;
const int MAX_OBJECT_AREA = FRAME_HEIGHT*FRAME_WIDTH/1.5;

void CColorTracker::DrawObject(std::vector<Object> theObjects, cv::Mat &frame, cv::Mat &temp,
                std::vector< std::vector<cv::Point> > contours, std::vector<cv::Vec4i> hierarchy)
{
    for(int i =0; i<theObjects.size(); i++)
    {
        cv::drawContours(frame,contours,i,theObjects.at(i).getColor(),3,8,hierarchy);
        cv::circle(frame,cv::Point(theObjects.at(i).getXPos(),theObjects.at(i).getYPos()),5,
                    theObjects.at(i).getColor());
        
        std::ostringstream stm1, stm2;
        stm1 << theObjects.at(i).getXPos();
        stm2 << theObjects.at(i).getYPos();

        cv::putText(frame, stm1.str() + " , " +
                    stm2.str(), cv::Point(theObjects.at(i).getXPos(),
                    theObjects.at(i).getYPos()+20), 1, 1, theObjects.at(i).getColor());

        cv::putText(frame,theObjects.at(i).getType(),cv::Point(theObjects.at(i).getXPos(),
                    theObjects.at(i).getYPos()-20),1,2,theObjects.at(i).getColor());
    }
}

void CColorTracker::MorphOps(cv::Mat &thresh)
{
    cv::Mat erodeElement = getStructuringElement(cv::MORPH_RECT,cv::Size(3,3));
    cv::Mat dilateElement = getStructuringElement(cv::MORPH_RECT,cv::Size(8,8));

    erode(thresh,thresh,erodeElement);
    erode(thresh,thresh,erodeElement);

    dilate(thresh,thresh,dilateElement);
    dilate(thresh,thresh,dilateElement);
}

void CColorTracker::TrackFilteredObject(Object theObject, cv::Mat threshold, cv::Mat HSV,
                                          cv::Mat &cameraFeed)
{
    std::vector<Object> objects;
    cv::Mat temp;
    threshold.copyTo(temp);
    std::vector<std::vector<cv::Point> > contours;
    std::vector<cv::Vec4i> hierarchy;
    findContours(temp, contours, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE);
    double refArea = 0;
    bool objectFound = false;
    if (hierarchy.size() > 0)
    {
        int numObjects = hierarchy.size();
        if (numObjects < MAX_NUM_OBJECTS)
        {
            for (int index = 0; index >= 0; index = hierarchy[index][0])
            {
                cv::Moments moment = moments((cv::Mat) contours[index]);
                double area = moment.m00;
                if (area > MIN_OBJECT_AREA)
                {
                    Object object;

                    object.setXPos(moment.m10 / area);
                    object.setYPos(moment.m01 / area);
                    object.setType(theObject.getType());
                    object.setColor(theObject.getColor());

                    objects.push_back(object);

                    objectFound = true;

                }
                else objectFound = false;
            }
            if (objectFound ==true)
                DrawObject(objects, cameraFeed, temp, contours, hierarchy);

        }
        else putText(cameraFeed, "TOO MUCH NOISE! ADJUST FILTER", cv::Point(0,50), 1, 2, 
                                                             cv::Scalar(0, 0, 255), 2);
    }
}

void CColorTracker::DetectColor(cv::Mat &frame)
{
    cv::Mat HSV;
    cv::Mat threshold;
    Object blue("blue");
    Object red("red");
    Object yellow("yellow");
    Object green("green");

    cv::cvtColor(frame, HSV, cv::COLOR_BGR2HSV);
    cv::inRange(HSV, blue.getHSVmin(), blue.getHSVmax(), threshold);
    MorphOps(threshold);
    TrackFilteredObject(blue, threshold, HSV, frame);
    //then yellows
    cv::cvtColor(frame, HSV, cv::COLOR_BGR2HSV);
    cv::inRange(HSV,yellow.getHSVmin(),yellow.getHSVmax(),threshold);
    MorphOps(threshold);
    TrackFilteredObject(yellow, threshold, HSV, frame);
    //then reds
    cv::cvtColor(frame, HSV, cv::COLOR_BGR2HSV);
    cv::inRange(HSV, red.getHSVmin(), red.getHSVmax(), threshold);
    MorphOps(threshold);
    TrackFilteredObject(red,threshold,HSV, frame);
    //then greens
    cv::cvtColor(frame, HSV, cv::COLOR_BGR2HSV);
    cv::inRange(HSV, green.getHSVmin(), green.getHSVmax(), threshold);
    MorphOps(threshold);
    TrackFilteredObject(green, threshold, HSV, frame);

}