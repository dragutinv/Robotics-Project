//seqcons.cpp - a program to construct an image sequence
//file to load into hume programs.
//Iain Wallace, 08/2005


//It takes in a sequence of images (in any format)
//and outputs them all concatenated into one file, in 
//ASCII PPM format, but with no headers.

//output appears on std_out

#include "CImg.h"
#include <iostream>
#include <sstream>
#include <string>

using namespace cimg_library;
using namespace std;


int main(int argc,char **argv)
{
    if (argc != 5)
    {

       cout << "Usage: seqcons name_stem extension start_frame_no end_frame_no" << endl;
       cout << "name-Stem = the invariant part of the image's filenames" << endl;
       cout << "extension = the file extension of the images" << endl;
       cout << "start and end frame no - fairly self-explanatory" << endl;
       cout << "ouput will be written to std_out" << endl;

       exit(1);
    }

      //First off, save the arguments
      int startNo = atoi(argv[3]);
      int endNo = atoi(argv[4]);
      string nameStem(argv[1]);
      string extension(argv[2]);
      //Use a stringstream for creatign image filenames, as it's easier to manipulate
      stringstream curFrameName(ios_base::in | ios_base::out);

      int curFrameNo = startNo;
      CImg<unsigned char> frame;

      for (curFrameNo = startNo;curFrameNo <= endNo;++curFrameNo)
      {
            //Load the frame
            curFrameName.str(nameStem);
            curFrameName << nameStem << curFrameNo << extension;
            //cout << "Loading: " << curFrameName.str().c_str() << endl;

            frame = frame.load(curFrameName.str().c_str());
            
            //just write out to std-out

            for (int y =0;y< frame.dimy();y++)
            {
                  for (int x = 0;x < frame.dimx();x++)
                  {
                    cout << (int)frame(x,y,0) << endl << (int)frame(x,y,1) << endl << (int)frame(x,y,2) << endl;
                  }
            }

      }

      exit(0);
}
