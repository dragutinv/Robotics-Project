//seqdes.cpp - a program to convert an image sequence file
//as created by seqcons.cpp into individual images.
//Iain Wallace, 08/2005

//It takes in a sequence of images concatenated into
// one file, in ASCII PPM format, but with no headers.
//For this reason, the image info must be supplied.

#include "CImg.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>

using namespace cimg_library;
using namespace std;


int main(int argc,char **argv)
{
    if (argc != 8)
    {
       cout << "Usage: seqdes name_stem extension start_frame_no end_frame_no sequence x_size y_size" << endl;
       cout << "name-Stem = the invariant part of the image's filenames" << endl;
       cout << "extension = the file extension of the images" << endl;
       cout << "start and end frame no - fairly self-explanatory" << endl;
       cout << "sequence = the concatenated sequence" << endl;
        cout << "x_size, y_size: the image dimensions" << endl;

       exit(1);
    }

      //First off, save the arguments
      int startNo = atoi(argv[3]);
      int endNo = atoi(argv[4]);
      string nameStem(argv[1]);
      string extension(argv[2]);
      //Use a stringstream for creatign image filenames, as it's easier to manipulate
      stringstream curFrameName(ios_base::in | ios_base::out);
      string infile(argv[5]);
      int x_size = atoi(argv[6]);
      int y_size = atoi(argv[7]);
      ifstream the_seq (infile.c_str());

      int curFrameNo = startNo;
      CImg<unsigned char> frame(x_size,y_size,1,3);

      for (curFrameNo = startNo;curFrameNo <= endNo;++curFrameNo)
      {
            //Load the frame
            curFrameName.str(nameStem);
            curFrameName << nameStem << curFrameNo << extension;

            for (int y =0;y< y_size;y++)
            {
                  for (int x = 0;x < x_size;x++)
                  {
                    int t;
                    the_seq >> t;
                    frame(x,y,0) = (unsigned char)t;
                    the_seq >> t;
                    frame(x,y,1) = (unsigned char)t;
                    the_seq >> t;
                    frame(x,y,2) = (unsigned char)t;
                  }
            }
            //now write the image
            frame.save(curFrameName.str().c_str());
      }

      exit(0);
}
