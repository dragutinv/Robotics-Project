C++ Readme
**********

Files
------

CImg-docs 		-- The readme and license doc for the CImg library.
CImg.h			--the CImg library (it's self-contained)
colourModel.cpp/.h	--the colour model object, used by meanshift.cpp
initTracker.cpp		--code for the program to get initialisation co-ords
Makefile		--the linux makefile for the code.
meanshift.cpp		--code for the meanshift tracker.
seqcons.cpp		--for constructing image sequence files for the hume.
seqdes.cpp		--for extracting images from the hume image sequences

Compiling
----------

"make" will make all the targets. These are as follows:

initTracker
meanshift
seqcons
seqdes

Targets can be made individually. There are no dependancies, though the imagemagik toolbox will mean that more image formats can be handled (to see if you have it, check if you have "convert").


input image sequences:
----------------------
The input images can be in any format supported by "convert" if you have it installed, otherwise they must be simple formats such as ppm (see CImg docs for details). The input should be a series of individual frames. If you have a video file, and wish to split it into frames, I used the excellent virtualdub (www.virtualdub.org).

Frame name should not be padded with 0s.

E.g. "frame0" to "frame150" is ok, whereas "frame000" to "frame150" is not.

Usage
-----
initTracker:
----------------------
All of the meanshift programs require initialisation parameters of the top left, and bottom right, coordinates of a box containing the target in the first frame. To make this easier, the initTracker program lets you select these by clicking on the image.

initTracker first_frame

will run the program. First click the top left corner, then the bottom right - the target area will then be highlighted and the terminal will ask if this is ok. If you press 'n' then the process repeats, if you press 'y' the program exits with the coordinates of the target.


meanshift:
----------------------
this runs the tracker.

typing "meanshift" will show the usage, it's best explained by example though:

"./meanshift ./redcup/redcup .ppm 0 99 77 63 148 151"

In this case, the images are all in ./redcup, they are all .ppm and they are named redcup0.ppm to redcup99.ppm (so the name_stem is ./redcup/redcup.

The top left corner is 77,63 and the bottom right is 148,151

Output will appear in the same place as the input images, and the same filenames but with "_out" appended to the name.


EDITING THE HISTOGRAM FUNCTION:
This is the only way you can really "tune" the tracker, see the report or the paper for details on this. It is set up initally to use a 3 colour 16 bins per colour model, that is a feature space of 4096. If this is changed then "make clean" MUST be run before a recompile as meanshift.cpp uses the header too!

The bins-per-colour (BPC) can be changed in colourModel.h, but be sure to set BINSIZE to 256/BPS, and if less colour channels are to be used, then change NUMBINS too (e.g. "NUMBINS BPC" for only one channel) and edit the "findBin" method to return 0 for the unused channels (see comments for details).


seqcons
----------------------
This constructs image sequences for the hume. "./seqcons" will display usage. Note the output is on std_out. Again an example is easiest:

"./seqcons ./redcup/redcup .ppm 0 99 > redcup.seq"

This converts the redcup frames (in the meanshift example) to a single redcup.seq file.

The .seq file will be ascii ppm image data, concatenated and with no headers.


seqdes
----------------------
This takes in a image sequence file (such as output from the hume code) and outputs an image sequence. Note that you need to know the original image dimensions. An example:

"./seqdes ./out./output .jpg 0 99 redcup.seq 320 240"

This would output the redcup.seq sequence to ./out/output0.jpg to ./out/output99.jpg and says that it's a sequence of 320x240 images.

