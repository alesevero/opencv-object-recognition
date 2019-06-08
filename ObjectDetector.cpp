#include "ObjectDetector.h"

bool CObjectDetector::GetXmlFiles(std::vector<std::string> vec)
{
    // busca por todos os xmls dentro do diretório
    DIR *dir;
    struct dirent *ent;
    std::size_t found;
    std::string strFile;
    if ((dir = opendir ("./")) != NULL)
    {
        /* print all the files and directories within directory */
        while ((ent = readdir (dir)) != NULL)
        {
            strFile = ent->d_name;
            found = strFile.find(".xml");
            if (found != std::string::npos)
            {
                vec.push_back(ent->d_name);
                std::cout << ent->d_name;
            }
        }

        closedir (dir);
    }
    else
    {
        /* could not open directory */
        perror ("");
        return false;
    }
    return true;
}

bool CObjectDetector::LoadModels()
{
    std::cout << "Loading models..."<< std::endl;
    std::vector<std::string> vecFiles;
    bool bOk = GetXmlFiles(vecFiles);

    //if (bOk)
    //{
        //for (int i = 0; i < vecFiles.size(); i++)
        //{
            cv::CascadeClassifier m_Classifier;
            m_Classifier.load("./lbpcascade_frontalface.xml"); // carregar o modelo
            if (m_Classifier.empty())
            {
                std::cout << "Square detector model empty!" << std::endl;
                //continue;
            }

            vecClassifiers.push_back(m_Classifier);
        //}
    //}
    //else return false;
    return true;
}

void CObjectDetector::DetectObjects(cv::Mat &frame)
{
    cv::Mat frame_gray;
    cv::cvtColor(frame, frame_gray, CV_BGR2GRAY);
    cv::equalizeHist(frame_gray, frame_gray);

    /*
        Se modo de rastreamento por cor está habilitado, realiza.
    */
    for (int i = 0; i < vecClassifiers.size(); i++)
    {
        std::vector<cv::Rect> objects;

        cv::CascadeClassifier classifier = vecClassifiers.at(i);

        classifier.detectMultiScale(frame_gray, objects,
                        1.1, 2, 0 | CV_HAAR_SCALE_IMAGE, cv::Size(30, 30));

        for (int i = 0; i < (int) objects.size(); i++)
        {
            cv::Point pt1(objects[i].x, objects[i].y);
            cv::Point pt2(objects[i].x + objects[i].width,
                    objects[i].y + objects[i].width);

            rectangle(frame, pt1, pt2, cv::Scalar(0, 0, 255), 2);
        }
    }
}