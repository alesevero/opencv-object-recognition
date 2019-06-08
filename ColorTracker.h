#pragma once
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/objdetect/objdetect.hpp"
#include "opencv/cv.h"
#include "Object.h"
#include <iostream>
#include <sstream>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <vector>

class CColorTracker
{
public:

    void DetectColor(cv::Mat &frame);

private:

    void TrackFilteredObject(Object theObject, cv::Mat threshold,
                             cv::Mat HSV, cv::Mat &frame);
    void DrawObject(std::vector<Object> theObjects, cv::Mat &frame, cv::Mat &temp,
            std::vector< std::vector<cv::Point> > contours, std::vector<cv::Vec4i> hierarchy);

    void MorphOps(cv::Mat &thresh);
};