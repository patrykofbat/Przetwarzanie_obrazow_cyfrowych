clearvars;
close all;
clc;


img = imread('coins.png');
figure(1);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imhist(img);

bin = im2bw(img, 150/255);
subplot(1,3,3);
imshow(bin);

img_2 = imread('figura.png');

figure(2);
subplot(1,3,1);
imshow(img_2);
subplot(1,3,2);
imhist(img_2);

img_2 = imread('figura2.png');

figure(3);
subplot(1,3,1);
imshow(img_2);
subplot(1,3,2);
imhist(img_2);

img_2 = imread('figura3.png');

figure(4);
subplot(1,3,1);
imshow(img_2);
subplot(1,3,2);
imhist(img_2);

img_2 = imread('figura4.png');

figure(5);
subplot(1,3,1);
imshow(img_2);
subplot(1,3,2);
imhist(img_2);

threshhold = graythresh(img);

figure(6)
bin = im2bw(img, threshhold);
imshow(bin);
title("otsu");
threshhold = clusterKittler(img);

figure(7)
bin = im2bw(img, threshhold/255);
imshow(bin);
title("clusterKittler");

threshhold = entropyYen(img);

figure(8)
bin = im2bw(img, threshhold/255);
imshow(bin);
title("entropyYen");









