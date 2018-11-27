close all;
clearvars;
clc;

img = imread('morfologia/fingerprint.bmp');
N = Inf;
img_2 = bwmorph(img, 'thin', N);

figure(1);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(img_2);

img = imread('morfologia/kosc.bmp');
img_2 = bwmorph(img, 'skel', N);

figure(2);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(img_2);

img = imread('morfologia/text.bmp');

SE = ones(51, 1);
img_2 = imopen(img, SE);
img_erode = imerode(img, SE);
img_3 = imreconstruct(img_erode, img);
img_4 = imfill(img, 'holes');
img_5 = imclearborder(img);
figure(3);
subplot(1,5,1);
imshow(img);
subplot(1,5,2);
imshow(img_2);
subplot(1,5,3);
imshow(img_3);
subplot(1,5,4);
imshow(img_4);
subplot(1,5,5);
imshow(img_5);