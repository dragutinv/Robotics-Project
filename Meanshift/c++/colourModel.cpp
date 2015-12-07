//colourModel.cpp - the colourModel object
//Iain Wallace 16/08/05

#include "colourModel.h"
#include <math.h>
#include <iostream>
using namespace cimg_library;
using namespace std;

colourModel::colourModel()
{
      //model must be initialised to 0
      memset( m_model, '\0', sizeof(m_model) );
      //Se we can tell if the memory's been allocated
      binsInit = false;
}

colourModel::~colourModel()
{
      //Free the bins memory, if it's assigned.
      if (binsInit)
      {
          for (unsigned int i=0;i<mX_dim;++i)
                delete[] bins[i];
          delete[] bins;
      }
}

double colourModel::operator[](unsigned int bin)
{
      //Use GTE as index is from 0
      if (bin >= NUMBINS)
      {
            cerr << "ERROR! Tried to access a model bin that doesn't exit!" << endl;
            return 0;
      }
      return m_model[bin];
}

unsigned int colourModel::findBin(unsigned char R,unsigned char G,unsigned char B)
{
      //return the bin number of a pixel according to its RGB value.
      //Note that the constants defined in the header file, and this function
      //control the only real tuning of the tracker.

      //scale the colours
      unsigned int r,g,b;


      r = (unsigned int)floor( (float)(R/BINSIZE) );
      g = (unsigned int)floor( (float)(G/BINSIZE) );
      b = (unsigned int)floor( (float)(B/BINSIZE) );
      //If, for example, the blue channel is not to be used, then change for:
      //b = 0;


      return (r + BPC*g + BPC*BPC*b);
}

void colourModel::clearModel()
{
      memset( m_model, '\0', sizeof(m_model) );
}


//This performs the function described by eqn(2) and eqn(4) (effectively the same)
//It saves the bin that each pixel is allocated too, as this prevents it being
//re-calculated when the weights are updated.
void colourModel::updateModel(cimg_library::CImg<unsigned char>* image,  //The image in question
                             unsigned int centreX,    //X co-ord of centre
                             unsigned int centreY,    //Y co-ord of centre
                             int half_x,              //half the x-size of the window
                             int half_y,              //half the y-size of the window
                             double*** kArray)        //the kernel
{
       clearModel();
       //first time this is called, create bins with the size of the window
       //NOTE: more cunning memory management would be required for reszizing windows!
       if (!binsInit)
       {
            cout << "Allocating a bin allocation table" << endl;
            //allocate the memory
            mX_dim = 2*half_x+1;
            mY_dim = 2*half_y+1;
            bins = new unsigned int*[mX_dim];
            for (unsigned int i=0;i<mX_dim;++i)
                  bins[i]  = new unsigned int[mY_dim];
            binsInit = true;
       }


      for (int x = -half_x;x <= half_x;++x)
      {
            for (int y = -half_y;y <= half_y;++y)
            {
                  //update the bin allocation table at the same time
                  int iX = centreX + x;
                  int iY = centreY + y;
                  bins[x+half_x][y+half_y] = findBin((*image)(iX,iY,0),(*image)(iX,iY,1),(*image)(iX,iY,2));
                  //adding on the kernel function, instead of summing like a regular histogram,
                  //accounts for the delta function in the eqns.
                  m_model[bins[x+half_x][y+half_y]]+= (*kArray)[x+half_x][y+half_y];
            }
      }
      //The model values must by normalised.
      double total = 0;
      for (int i = 0;i< NUMBINS;++i)
      {
            total += m_model[i];
      }
      for (int i = 0;i< NUMBINS;++i)
      {
            m_model[i] /= total;
      }
}

unsigned int colourModel::theBin(unsigned int x, unsigned int y)
{
      if ((x > mX_dim) || (y > mY_dim) || (!binsInit))
      {
            cerr << "ERROR! Attempted to access a pixel out of the window!" << endl;
            return( 0);
      }
      else
      {
            return(bins[x][y]);
      }
}

