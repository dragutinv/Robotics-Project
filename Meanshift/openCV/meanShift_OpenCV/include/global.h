/*-- Header data required for Mean shift based object tracking algorithm --*/
#ifndef TRACKOBJ_H // header guards
#define TRACKOBJ_H

#define VMIN 10
#define VMAX 256
#define SMIN 30

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
using namespace cv;

Rect initTracking(Mat img, const char* winName, bool *firstFrame);
Rect tracking(Mat img, Rect trackWindow);

#endif
