clearvars;
close all;
clc;

img = imread('katalog.bmp');

[X Y] = size(img);

obrazbw = img;

for i = 1:X
    for j = 1:Y
        if obrazbw(i,j) >= meanLT(i,j,7, obrazbw , X, Y)
            img(i, j) = 255;
        
        else
            img(i, j) = 0;
        end
    end
end

figure(1)
subplot(1, 2, 1);
imshow(obrazbw);
subplot(1,2,2);
imshow(img);

for i = 1:X
    for j = 1:Y
       mean = meanLT(i,j,7, obrazbw , X, Y);
       stdd = stddevLT(i,j,7, obrazbw , mean, X, Y);
       R = 128;
       k = 0.15;
       T = (mean *(1+k*((stdd/R) - 1)));
       if obrazbw(i,j)>= T
           img(i, j) = 255;
       else
           img(i,j) =0;
       end
       
    end
end

figure(2)
subplot(1, 2, 1);
imshow(obrazbw);
subplot(1,2,2);
imshow(img);