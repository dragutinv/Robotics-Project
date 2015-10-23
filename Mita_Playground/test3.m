
A=imread('duck.jpg');
B=rgb2gray(A);
disp('Image file read successful');
%figure,imshow(B),title('org');

w = 176;
h = 144;
C=imresize(B,[w h]);
figure,imshow(C),title('croped');
d=reshape(C,1,[]);
disp('Reshapping done');
fid = fopen('img.txt', 'wt');
fprintf(fid, '%8d\n', d);
disp('Text file write done');disp('');
fclose(fid);

fidh = fopen('img.txt');
Ah = fscanf(fidh, '%g %g', [1 inf]);
disp('Text file read done');
fclose(fidh);
S1h= vec2mat(Ah,w,h);
disp('Vector conversion done');
        %c=imresize(S1,[128 128]);
Sh= transpose(S1h);
Jh=uint8(Sh);
disp('Image is ready');
imwrite(Jh,['newimage','.jpg']);
figure,imshow(Jh),title('IMAGE from TEXT file');