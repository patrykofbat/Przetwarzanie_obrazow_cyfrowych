clearvars;
close all;
clc;

img = imread('bart.bmp');

figure(1);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imhist(img);

low = 0.75 * 255;

high = 0.8 * 255;

obrazbw = img > low & img < high;
obrazbw = uint8(obrazbw) * 255 ;

figure(2);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(obrazbw);