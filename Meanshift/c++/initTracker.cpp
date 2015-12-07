// A program to select a region in an image
// Use for initial parameters to a tracker?
// Iain Wallace, 15/8/05


#include "CImg.h"
#include <iostream>
using namespace cimg_library;
using namespace std;

int main(int argc,char **argv)
{
  
    if (argc != 2)
    {
       cout << "Usage: initTracker first_frame" << endl;
       exit(1);
    }
    CImg<unsigned char> image(argv[1]);
    CImg<unsigned char> orig(image);

    CImgDisplay main_disp(image,"Click 2 points");
    const unsigned char red[3]={255,0,0};
    bool clicked_once = false;
    int x1,y1,x2,y2;

    while (!main_disp.closed)
    {
      main_disp.wait();
      if (main_disp.button && main_disp.mouse_y>=0 && main_disp.mouse_x>=0)
      {
         if (!clicked_once)
         {
            y1 = main_disp.mouse_y;
            x1 = main_disp.mouse_x;

            clicked_once = true;
         }
         else
         {
            y2 = main_disp.mouse_y;
            x2 = main_disp.mouse_x;

            clicked_once = false;
            image.draw_rectangle(x1,y1,x2,y2,red,0.4);
            main_disp.display(image);
            
            char response = 'n';
             cout << "Selection ok? [y/n]: ";
             cin >> response;
             if ((response == 'y') || (response == 'Y'))
             {
                cout << "X1: " << x1 << endl << " Y1: " << y1 << endl;
                cout << "X2: " << x2 << endl << " Y2: " << y2 << endl;
                main_disp.close();
                exit(0);
             }
         }

         image = orig;
         main_disp.display(image);
      }
    }
    return 0;
}
