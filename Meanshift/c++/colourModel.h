//colourModel.h - defines the colourModel object
//This is used to create the weighted histogram used by the mean-shift tracker.

// Iain Wallace 16/08/05

#ifndef COLOURMODEL_H
#define COLOURMODEL_H
//Uses the CImg library, found at http://cimg.sourceforge.net/
#include "CImg.h"

//IMPORTANT: Changes to these values WILL cause crashes unless you do "make clean"
//then rebuild meanshift.o aswell, as it uses them!
#define BPC 16                //bins per colour
#define BINSIZE 16            //size of each bin MUST BE BPC/256
#define NUMBINS BPC*BPC*BPC   //total number of bins
//if only two colours are used then
//#define NUMBINS BPC*BPC
//if only one colour
//#define NUMBINS BPC

class colourModel
{
public:
      colourModel();          //initially the histogram will be empty.
      ~colourModel();


      //The [] operator indexes into m_model.
      //Note index is 0 to numBins-1
      double operator[](unsigned int bin);

      //returns the bin-no. of a RGB value
      unsigned int findBin(unsigned char R,unsigned char G,unsigned char B);

      //empties the model for updating.
      void clearModel();

      //takes in a kernel covering the ROI too, and instead of a regular histogram,
      //creates the model for the ROI based on the kernel too.
      //Used for Qu and Pu
      void updateModel(cimg_library::CImg<unsigned char>* image,  //The image in question
                             unsigned int centreX,    //X co-ord of centre
                             unsigned int centreY,    //Y co-ord of centre
                              int half_x,     //half the x-size of the window
                              int half_y,     //half the y-size of the window
                             double*** kArray);       //the kernel



       //returns the bin-number of the pixel at x,y in the binallocation table
       //unsafe! well kinda, returns 0 and prints to std-err for errors
       //IMPORTANT! This takes an index 0-x_size, not the -half_x to half_x indexing
       //used elsewhere!
       unsigned int theBin(unsigned int x, unsigned int y);


private:
        double m_model[NUMBINS];
        unsigned int** bins;
        bool binsInit;
        unsigned int mX_dim,mY_dim;
};
#endif //COLOURMODEL_H
