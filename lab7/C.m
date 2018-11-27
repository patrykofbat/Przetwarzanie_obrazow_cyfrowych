close all;
clearvars;
clc;

img = imread('morfologia/ferrari.bmp');
SE = strel('square', 3);
img_erode = imerode(img, SE);
img_dilate = imdilate(img, SE);

figure(1);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_erode);
subplot(1,3,3);
imshow(img_dilate);

img_op = imopen(img, SE);
img_cl = imclose(img, SE);

figure(2);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_op);
subplot(1,3,3);
imshow(img_cl);

img_tophat = imtophat(img, SE);
img_bothat = imbothat(img, SE);

figure(3);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_tophat);
subplot(1,3,3);
imshow(img_bothat);


img = imread('rice.png');
SE = strel('disk', 10, 0);
img_2 = imtophat(img, SE);

figure(4);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(img_2);