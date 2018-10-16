clear vars
close all
clc

img = imread('archiwum/lena.bmp');
figure(1);
imshow(img);

img2=imresize(img,[64,64],'nearest');
figure(2)
imshow(img2);