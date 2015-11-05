A=imread('duck.jpg');
[w,h,  ~] = size(A);

res = zeros(w,h);
for i = 1:w
for j=1:h
    R = A(i,j,1);
    G = A(i,j,2);
    B = A(i,j,3);    
    pix = rgb2hex([R,G,B]);
    res(i,j)=pix;
    
end
    end