//--------------------------------------------------------------//
// meanShift.cpp - a meanshift tracker
//
// Based on the paper "Kernel-based object tracking"
// D. Comaniciu, V. Ramesh, P. Meer, IEEE Trans. Pattern
// Analysis and Machine Intelligence, vol25 (5),pp564-577,
// August 2003
//
// This code uses openCV implementation of meanShift tracker. 
//
//	@author	Deepayan Bhowmik 
//	@email  d.bhowmik@hw.ac.uk
//  @date   03-June-2013
//--------------------------------------------------------------//

/*-- OpenCV library declaration --*/

#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include "opencv2/video/tracking.hpp"
#include <opencv/cv.h>
#include <iostream>
#include "global.h"

using namespace cv;
using namespace std;

/*-------- Global variables ----------*/
int hsize = 16;  //-- Histogram size 
float hranges[] = {0,180};
const float* phranges = hranges;

/*-- Mat:: Image data type --*/ 
Mat hsv, hue, mask, hist, backProject; 
bool isTrackingInitialized;
/*------------------------------------*/

int main(int argc, char** argv){	
	if( argc != 3){ //-- Check for valid input arguments    
		cout <<" Usage: trackObj inputVideo.avi 30(delay in millisec)" << endl;
		return -1;
    }

	/*-- Start reading the video frames --*/	
	const char* winName = "Mean-Shift tracker";
	bool firstFrame = true; 

	VideoCapture capture(argv[1]); //-- Open the video file
	if(!capture.isOpened()){  //-- check if we succeeded
		cout<<"Video capture failed. Exiting.."<<endl;
        return -1;
	}
	namedWindow(winName,CV_WINDOW_AUTOSIZE);	
	int speed = atoi(argv[2]);
	
	/*-- Declaration and initialisation --*/
	int frameCount = 0;
	isTrackingInitialized = false;
	Mat frame; /*-- Image data type --*/ 
	Rect trackWindow; /*-- Rectanlge data type --*/	
	
	while(1){            			
		if(!capture.read(frame)){ //-- Read one frame at a time untill last frame reached
			break;
		}		
		frameCount++; //-- Frame count to display purpose only. No contribution in algorithm. 

		//-- First define the object / area to be tracked. Valid only for the first frame. 		
		if(firstFrame){							
			trackWindow = initTracking(frame, winName, &firstFrame);
			isTrackingInitialized = false;
		} else{
			/*-- Start tracking here --*/
			cout<<"Tracking object in frame "<< frameCount << ".." <<endl;

			/*-- Find the new tracking window in current frame --*/
			trackWindow = tracking(frame, trackWindow);

			/*-- Draw tracked rectangle --*/
			rectangle(frame,trackWindow,Scalar(0, 0, 255)); 
			
			/*-- Video frame display and exit sequence --*/
			imshow(winName, frame); 
			if(waitKey(speed)==27){
				cout<<"Program exit.."<<endl;
				return -1;
			}
		}
    	}

	return 0;
}

/*-- meanShift tracking function --*/
Rect tracking(Mat img, Rect trackWindow){
	/*-- Convert the colorspace to calculate the histogram. 
	     This algorithm considers Hue values as feature vector. 
		 This can be modified to any other type of colour space model. 
	--*/
	cvtColor(img,hsv,CV_BGR2HSV);	//-- OpenCV function 

	//-- Get only Hue channel here
	int ch[] = {0, 0};
    hue.create(hsv.size(), hsv.depth());
    mixChannels(&hsv, 1, &hue, 1, ch, 1); //-- OpenCV function 
	
	int _vmin = VMIN, _vmax = VMAX;
	inRange(hsv, Scalar(0, SMIN, MIN(_vmin,_vmax)),
                    Scalar(180, 256, MAX(_vmin, _vmax)), mask); //-- OpenCV function 		
	
	if( !isTrackingInitialized){    
		/*-- Consider only ROI for histogram calculation --*/
        Mat roi(hue, trackWindow), maskroi(mask, trackWindow);

		//-- Histogram calculation; OpenCV function
        calcHist(&roi, 1, 0, maskroi, hist, 1, &hsize, &phranges); 

		/*-- Normalise --*/
        normalize(hist, hist, 0, 255, CV_MINMAX);
       
		isTrackingInitialized = true;      
    }

	/*-- Back projection calculation is required for meanShift function parameter. 
	     This is openCV function. Refer OpenCV documentation --*/
	calcBackProject(&hue, 1, 0, hist, backProject, &phranges);
    backProject &= mask;

	/*-- Mean shift algorithm. In-built algorithm in OpenCV --*/
	meanShift(backProject, trackWindow, TermCriteria(CV_TERMCRIT_EPS | CV_TERMCRIT_ITER, 10, 1 ));

	/*-- Return modified tracking window --*/
	return trackWindow;
}
