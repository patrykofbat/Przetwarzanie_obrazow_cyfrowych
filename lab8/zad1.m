close all;
clearvars;
clc;

img = imread('9_KrawedzieHough/dom.png');
img_edge = edge(img, 'log');
threshhold = 5;
sigma = 0.5;

%% log
figure(1);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(img_edge, []);


img_edge = edge(img, 'Canny');

%% canny
figure(2);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(img_edge, []);

img_edge = edge(img, 'Sobel');

figure(3);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(img_edge, []);


