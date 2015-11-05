
% clc;
 isize=256;
% 
A=imread('1.bmp');
B=rgb2gray(A);
disp('Image file read successful');
%figure,imshow(B),title('org');

C=imresize(B,[isize isize]);
figure,imshow(C),title('croped');
d=reshape(C,1,[]);
disp('Reshapping done');
fid = fopen('img2.txt', 'wt');
fprintf(fid, '%8d\n', d);
disp('Text file write done');disp(' ');
fclose(fid);
% 
% 
% 
% fidh = fopen('outimgvhdl.txt');
% Ah = fscanf(fidh, '%g %g', [1 inf]);
% disp('Text file read done');
% fclose(fidh);
% S1h= vec2mat(Ah,isize,isize);
% disp('Vector conversion done');
% %c=imresize(S1,[128 128]); 
% Sh= transpose(S1h);
% Jh=uint8(Sh);
% disp('Image is ready');
% imwrite(Jh,['newimage','.jpg']);
% figure,imshow(Jh),title('IMAGE form TEXT file');
