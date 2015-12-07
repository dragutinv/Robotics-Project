//meanshift.cpp - a meanshift tracker
//Iain Wallace, 08/2005

//Based on the equations in "kernel-based object tracking"
//D. Comaniciu, V. Ramesh, P. Meer, IEEE Trans. Pattern
//Analysis and Machine Intelligence, vol25 (5),pp564-577,
//August 2003

//References to equations, and numbers, refer to this paper.

//Also used matlab code by Zsolt L. Husz from HWU for reference

//Some notes on terminology.
//"window" refers to the user-defined region covering the target.

//TODO put references in to the eqns in the paper

#include "CImg.h"
#include <iostream>
#include <sstream>
#include <string>
#include <time.h>

#include "colourModel.h"

using namespace cimg_library;
using namespace std;

double kernel(int x,int y,int half_x,int half_y)
{
      //This comes from a simplified version of eqn(12).
      //Note that this makes use of the fact that a lot of the kernel terms cancel out,
      //as it is primarily used in eqn(2) and eqn(3).
      //the distance to the point, normalised to unit radius from the centre
      double euclideanDistance = sqrt( pow( ( (double)(x)/(double)(half_x) ) ,2.0) +pow( ( (double)(y)/(double)(half_y) ) ,2.0) );
      if (euclideanDistance > 1)
            return( 0.0);
      else
            return(1.0-pow(euclideanDistance,2));
}

void evalKernel (double*** kArray,int half_x,int half_y)
{
      //This function calculates the Epanechnikov kernel over
      //the size of the window.
      //x and y vary accoding to local co-ords with 0,0 at the centre
      for (int x = -half_x;x < half_x;++x)
      {
            for (int y = -half_y;y < half_y;++y)
            {
                  (*kArray)[x+half_x][y+half_y] = kernel(x,y,half_x,half_y);
            }
      }
}

void evalKernelDeriv (int*** kArray,int half_x,int half_y)
{
      //This function calculates the derivative of the Epanechnikov kernel over
      //the size of the window. Appears as "g" in the paper.
      //x and y vary accoding to local co-ords with 0,0 at the centre
      double euclideanDistance;
      for (int x = -half_x;x < half_x;++x)
      {
            for (int y = -half_y;y < half_y;++y)
            {
                  euclideanDistance = sqrt( pow( ( (double)(x)/(double)(half_x) ) ,2.0) +pow( ( (double)(y)/(double)(half_y) ) ,2.0) );
                  if (euclideanDistance > 1)
                        (*kArray)[x+half_x][y+half_y] = 0;
                  else
                        (*kArray)[x+half_x][y+half_y] = 1;

            }
      }
}
void writeFrame(CImg<unsigned char>* frame,int centre_x,int centre_y,int half_size_x,int half_size_y,string name)
{
      const unsigned char colour[3]={255,0,0};
      int x1 = centre_x - half_size_x;
      int y1 = centre_y - half_size_y;
      int x2 = centre_x + half_size_x;
      int y2 = centre_y + half_size_y;

      //Highlight the target in a fetching transparent red
      (*frame).draw_rectangle(x1,y1,x2,y2,colour,0.4);

      //This code writes the frame (with box) to a file.
      //Filename will be the original, with "_out" appended before the extension.
      string fileName(name);
      fileName.insert((name.size()-4),"_out");
      (*frame).save(fileName.c_str());

}


void updateWeights(double*** weights,colourModel *Pu,colourModel *Qu,unsigned int x_size,unsigned int y_size)
{
      //This calculates the pixel weights for the window, based on the colour model.
      //Described in eqn(10)

      double R[NUMBINS];

      for (int i = 0;i< NUMBINS;++i)
      {
            //Note if there're no pixels in a bin we'll never need to use the value,
            //so set corresponding R to 0
            //Necessary, as otherwise there will be divide-by-zero errors.
            if ((*Pu)[i]==0)
            {
                  R[i] = 0.0;
            }
            else
            {
                  R[i] = sqrt( ((*Qu)[i]/(*Pu)[i]) );
            }
      }

      for (unsigned int x = 0;x<x_size;++x)
      {
            for (unsigned int y = 0;y<y_size;++y)
            {
                  (*weights)[x][y] = R[(*Pu).theBin(x,y)];
            }
      }
}

void computeDisplacement(double*** weights,int*** kArray,unsigned int centre_x,unsigned int centre_y,int half_x,int half_y,int *dx,int *dy)
{
      double weight_sum = 0;
      double x_sum =0, y_sum=0;
      double curPixelWeight;

      for (int x = -half_x;x < half_x;++x)
      {
            for (int y = -half_y;y < half_y;++y)
            {
                  //the bottom half of eqn(11) (sum the weights under the kernel)
                  curPixelWeight = (*weights)[x+half_x+1][y+half_y+1]*(*kArray)[x+half_x+1][y+half_y+1];
                  weight_sum += curPixelWeight;
                  //The top half of Eqn(11)
                  x_sum += x*curPixelWeight;
                  y_sum += y*curPixelWeight;
            }
      }
      //do the division
      *dx = (int)floor(x_sum/weight_sum);
      *dy = (int)floor(y_sum/weight_sum);
}

int main(int argc,char **argv)
{
    if (argc != 9)
    {
      //TODO make the usage more helpful once I know what it does!
       cout << "Usage: meanshift name_stem extension start_frame_no end_frame_no TL-X TL-Y BR-X BR-Y" << endl;
       cout << "name-Stem = the invariant part of the image's filenames" << endl;
       cout << "extension = the file extension of the images" << endl;
       cout << "start and end frame no - fairly self-explanatory" << endl;
       cout << "TL-X = top-left corner X co-ord" << endl;
       cout << "TL-Y = top-left corner Y co-ord" << endl;
       cout << "BR-X = bottom-right corner X co-ord" << endl;
       cout << "BR-Y = bottom-right corner Y co-ord" << endl;
       exit(1);
    }

      //First off, save the arguments
      int startNo = atoi(argv[3]);
      int endNo = atoi(argv[4]);
      string nameStem(argv[1]);
      string extension(argv[2]);
      //Use a stringstream for creatign image filenames, as it's easier to manipulate
      stringstream curFrameName(ios_base::in | ios_base::out);
      int x0 = atoi(argv[5]);
      int y0 = atoi(argv[6]);
      int x1 = atoi(argv[7]);
      int y1 = atoi(argv[8]);

      int curFrameNo = startNo;

      //calculate the centre of the window, and the half-size (size from centre to edge)
      //Note this implicitly makes the window an odd size, which is required so there is
      //a centre pixel (not halfway)
      int centre_x = (int)floor((x1-x0)/2.0)+x0;
      int centre_y = (int)floor((y1-y0)/2.0)+y0;
      const int half_size_x = centre_x - x0;
      const int half_size_y = centre_y - y0;
      const int x_size = 2*half_size_x+1;
      const int y_size = 2*half_size_y+1;

      cout << "Initialising the weight array" << endl;
      //declare a 2d array the size of the window
      //This is used to store the pixel weights, as described in eqn(10)
      double **weight_array;
      weight_array = new double*[x_size];
      for (int i=0;i<x_size;++i)
            weight_array[i]  = new double[y_size];

      cout << "Initialising the kernel" << endl;
      //declare a 2d array the size of the window, and fill it with the kernel function

      double **kernel_array;
      kernel_array = new double*[x_size];
      for (int i=0;i<x_size;++i)
            kernel_array[i]  = new double[y_size];
      //the value of the kernal is static, as the only variable is the position of the pixels
      //relative to the centre, and the window size is constant.
      evalKernel(&kernel_array,half_size_x,half_size_y);

      cout << "Initialising the kernel derivative" << endl;

      //now the derivative of the kernel
      //AS with the kernel, this is needed, but also constant (as the kernel is constant)
      int **kernelDeriv_array;
      kernelDeriv_array = new int*[x_size];
      for (int i=0;i<x_size;++i)
            kernelDeriv_array[i]  = new int[y_size];

      evalKernelDeriv(&kernelDeriv_array,half_size_x,half_size_y);

      cout << "Initialising the model (Qu)" << endl;

      //this is odd - why does it clear the buffer rather than set it??
      //Hence the code "seems" to put nameStem in the stringstream twice, but
      //actually only does once.
      curFrameName.str(nameStem);
      curFrameName << nameStem << curFrameNo << extension;

      cout << "Loading: " << curFrameName.str().c_str() << endl;
      CImg<unsigned char> frame(curFrameName.str().c_str());

      //we need the model of the window
      colourModel Qu;

      Qu.updateModel(&frame,centre_x,centre_y,half_size_x,half_size_y,&kernel_array);


      cout << "Writing the first frame" << endl;
      //NOTE: currently the writeFrame routine just draws the rectangle, output is
      //to display only.
      writeFrame(&frame,centre_x,centre_y,half_size_x,half_size_y,curFrameName.str());
      //CImgDisplay main_disp(frame,"output",0,0);


      colourModel Pu;
      int dx = 0, dy=0, pdx = 0, pdy = 0;

      //for some stats
      int avIters = 0;
      int maxIters = 0;
      int minIters = 99999;

      time_t start, end;
      time(&start);
      cout << "****Beginning tracking****" << endl;
      for (curFrameNo = startNo+1;curFrameNo <= endNo;++curFrameNo)
      {
            //Load the frame
            curFrameName.str(nameStem);
            curFrameName << nameStem << curFrameNo << extension;
            cout << "Loading: " << curFrameName.str().c_str() << endl;

            frame = frame.load(curFrameName.str().c_str());

            //We iterate over the current frame until it converges.
            int loopCount = 0;
            bool exit = false;
            while (exit == false)
            {
                  pdx = dx;
                  pdy = dy;

                  loopCount++;
                  Pu.updateModel(&frame,centre_x,centre_y,half_size_x,half_size_y,&kernel_array);
                  updateWeights(&weight_array,&Pu,&Qu,x_size,y_size);
                  //now compute the displacement
                  computeDisplacement(&weight_array,&kernelDeriv_array,centre_x,centre_y,half_size_x,half_size_y,&dx,&dy);
                  //cout << "dx = " << dx << " dy = " << dy << endl;
                  centre_x += dx;
                  centre_y += dy;
                  //Check if we've converged
                  //Also, strictly a better convergence rule could be used
                  // - see steps 4-6 on p567 in the paper.
                  //There is a check for "oscillation" due to rounding errors.
                  if (((dx == 0) && (dy == 0)) || (loopCount > 20) || ( (pdx + dx == 0) && (pdy+dy==0) ))
                        exit = true;
            }
            avIters += loopCount;
            if (loopCount > maxIters)
                  maxIters = loopCount;
            if (loopCount < minIters)
                  minIters = loopCount;

            //now write out the frame
            //NOTE: currently the writeFrame routine just draws the rectangle, output is
            //to display only.
            writeFrame(&frame,centre_x,centre_y,half_size_x,half_size_y,curFrameName.str());
            //main_disp.display(frame);
      }
      time(&end);
      cout << "****Done tracking****" << endl;
      cout << "Average iterations per frame = " << (avIters/curFrameNo) << endl;
      cout << "Max iters = " << maxIters << endl;
      cout << "Min iters = " << minIters << endl;
      cout << "Ave. Fps: " << (curFrameNo/difftime(end,start)) << "fps" << endl;
      cout << "Ave. ips: " << (avIters/difftime(end,start)) << "ips" << endl;


      //be a good little program and free the memory :-)
      for (int i=0;i<x_size;++i)
      {
            delete[] weight_array[i];
            delete[] kernel_array[i];
            delete[] kernelDeriv_array[i];
      }
      delete[] weight_array;
      delete[] kernel_array;
      delete[] kernelDeriv_array;
      exit(0);
}
