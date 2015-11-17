CAL Project: DrawRectangle
Author: Deepayan Bhowmik (d.bhowmik@hw.ac.uk)
-----------------

Description: This program reads YUV444 video files, draw a red rectangle on every frame on a predefined location and saves the video. 

Program flow: 

1. Read source video
2. Convert source stream to YUV channels
3. Convert YUV to RGB color space
4. Draw rectangle 
5. Convert RGB to YUV colorspace
6. Convert YUV channels to stream mode
7. Test for end of the sequence character
8. Writes back on the disk

# This code does not include any floating point operation.


Instruction to run the code

C:\drawRectBin\>TopDrawRectangle.exe -i input.yuv -w output.yuv -l 1


# NOTE 1: Sample YUV444 videos are available from https://www.dropbox.com/sh/8bp9mzzbb0trnkv/AAD06fmmb4s21m1lQQ69HuzLa?dl=0 with naming convention input_WidthxHeight.yuv 
# NOTE 2: To run these video download any yuv player (e.g. ffplay / GUI based YUV players), adjust the correct width, height and color space (yuv444) parameters. 

# NOTE 3: During CAL backend C code compilation / generation, go to configuration --> compilation option tab --> set the FIFo size to atleast 2 to the power of 15 = 32768.  


Any questions: ask the author. 
