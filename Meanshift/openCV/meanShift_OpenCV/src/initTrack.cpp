#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>

#include <iostream>
#include "global.h"

using namespace cv;
using namespace std;

Mat imgOrg, imgCopy;
Rect selection; //-- Data type rectangle 
const char* winName;
bool clickedOnce, *firstFrame;

/*-- Function to capture mouse action --*/
void onMouse(int event, int x, int y, int flags, void* param){	
	
	if (event == CV_EVENT_LBUTTONDOWN){ //-- On mouse left click   
		if (!clickedOnce){	
			selection = cvRect(x,y,0,0);			
			clickedOnce = true;
		} else {	
			selection.width = x - selection.x;
			selection.height = y - selection.y;			
			clickedOnce = false;

			rectangle(imgOrg,selection,Scalar( 0, 0, 255)); //-- Draw rectangle 
			imshow(winName, imgOrg); waitKey(10);

            cout << "Selection ok? [y/n]: "<<endl;
		}
	}	        
}


Rect initTracking(Mat img, const char* winNameInit, bool *firstFrameInit){
	imgOrg = img.clone();
	winName = winNameInit;	
	firstFrame = firstFrameInit;
	clickedOnce = false;
	
	cout << "Slect an area to be tracked by clicking on the image twice."<<endl;
	/*-- Listen to mouse actions --*/	
	setMouseCallback(winName, onMouse, 0);
	imgCopy = imgOrg.clone();	

	while(1){		
		imshow(winName, imgOrg); //-- Image show
		char c = waitKey(0);
		if(c == 'y' || c == 'Y'){ //-- Wait for key to be pressed
			*firstFrame = false;	
			setMouseCallback(winName, NULL, 0); //-- Disable mouse event
			break;
		} else{
			imgOrg = imgCopy.clone();
		}		
	}
		
	return selection;
}
