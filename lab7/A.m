close all;
clearvars;
clc;
r = 3;
n = 4;
shape = 'disk';
SE = strel(shape, r, n);

img = imread('morfologia/ertka.bmp');
img_erode = imerode(img, SE);
img_erode_3 = imerode(imerode(imerode(img, SE), SE), SE);
figure(1);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_erode);
subplot(1,3,3);
imshow(img_erode_3);

SE_manual = [1 1 1; 1 1 1; 1 1 1];

img_2 = imread('morfologia/buzka.bmp');
img_2_erode = imerode(img_2, SE_manual);
figure(2);
subplot(1,2,1);
imshow(img_2);
subplot(1,2,2);
imshow(img_2_erode);


SE = strel('square', r)
img_dilate = imdilate(img, SE);
figure(3);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(img_dilate);

figure(4);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(imopen(img, SE));
subplot(1,3,3);
imshow(imclose(img, SE));

figure(5)
imshow(imclose(imopen(img, SE), SE))

img = imread('morfologia/hom.bmp');
SE1 = [0 1 0; 1 1 1; 0 1 0];
SE2 = [1 0 1; 0 0 0; 1 0 1];
img_bw = bwhitmiss(img, SE1, SE2);
figure(6);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(img_bw);
