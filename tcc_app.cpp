#include "opencv2/highgui/highgui.hpp"
#include "opencv2/objdetect/objdetect.hpp"
#include "ObjectDetector.h"
#include "ColorTracker.h"
#include <stdlib.h>
#include <vector>
#include <dirent.h>

#define OBJETO 0
#define COR    1

char key;

/*

    ARGUMENTO 1: Modo {
                    OBJECTO      0
                    COR          1
                    }

    ARGUMENTO 2: Frame {
                    VIDEO 0
                    FOTO  1
                    }

*/

int main( int argc, char** argv)
{
    int nMode = atoi(argv[1]);
    //int nFace = atoi(argv[3]);
    bool bLoaded = true;
    int bVideo = atoi(argv[2]);
    std::vector<std::string> vecXmlFiles;

    cv::namedWindow("Camera_Output", 0);
    cv::VideoCapture capture;
    cv::Mat mtFrame;

    capture.open(0);
    capture.set(CV_CAP_PROP_FRAME_WIDTH, 1024);
    capture.set(CV_CAP_PROP_FRAME_HEIGHT, 560);

    CObjectDetector* detector = new CObjectDetector;
    CColorTracker* colorTracker = new CColorTracker;

    switch (nMode)
    {
        case 0: std::cout << "Reconhecimento de objetos e rastreamento por cor!\n";
                break;

        case 1: std::cout << "Reconhecimento de objetos! \n";
                break;

        case 2: std::cout << "Rastreamento por cor! \n";
                break;

        default: break;
    }

    if (nMode == OBJETO)
        bLoaded = detector->LoadModels();

    if (bLoaded)
    {
        if (bVideo == 0)
        {
            while (1)
            {
                capture.read(mtFrame);
                if (nMode == OBJETO)
                    detector->DetectObjects(mtFrame);
                else if (nMode == COR)
                    colorTracker->DetectColor(mtFrame);
                cv::imshow("Camera_Output", mtFrame);

                key = cvWaitKey(10);
                if (char(key) == 27) break;
            }
        }
        else
        {
            std::cout << "Aguardando frame. Aperte Esc para tirar uma foto" << std::endl;
            while (1)
            {
                capture.read(mtFrame);
                cv::imshow("Camera_Output", mtFrame);

                key = cvWaitKey(10);
                if (char(key) == 27) break;
            }

            if (nMode == OBJETO)
                detector->DetectObjects(mtFrame);
            else if (nMode == COR)
                colorTracker->DetectColor(mtFrame);

            while (1)
            {
                cv::imshow("Camera_Output", mtFrame);

                key = cvWaitKey(10);
                if (char(key) == 27) break;
            }
        }
    }

    delete detector;
    detector = NULL;
    delete colorTracker;
    colorTracker = NULL;

    return 0;
}