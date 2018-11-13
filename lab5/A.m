close all;
clearvars;
clc;

img = imread('plansza.bmp');

filter = fspecial('average');
img_2 = uint8(conv2(img , filter, 'same'));
img_3 = imabsdiff(img, img_2);

figure(1);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_2);
subplot(1,3,3);
imshow(img_3, []);


filter = fspecial('average', [5 5]);
img_2 = uint8(conv2(img , filter, 'same'));
img_3 = imabsdiff(img, img_2);


figure(2);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_2);
subplot(1,3,3);
imshow(img_3, []);


filter = fspecial('average', [9 9]);
img_2 = uint8(conv2(img , filter, 'same'));
img_3 = imabsdiff(img, img_2);


figure(3);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_2);
subplot(1,3,3);
imshow(img_3, []);


filter = fspecial('average', [15 15]);
img_2 = uint8(conv2(img , filter, 'same'));
img_3 = imabsdiff(img, img_2);


figure(4);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_2);
subplot(1,3,3);
imshow(img_3, []);

filter = fspecial('average', [35 35]);
img_2 = uint8(conv2(img , filter, 'same'));
img_3 = imabsdiff(img, img_2);


figure(5);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_2);
subplot(1,3,3);
imshow(img_3, []);


imgLena = imread('lena.bmp');

filter = fspecial('average', [15 15]);
img_2 = uint8(conv2(imgLena , filter, 'same'));

figure(6);
subplot(1,2,1);
imshow(imgLena);
subplot(1,2,2);
imshow(img_2);

M = [1 2 1; 2 4 2;1 2 1];
M = M/sum(sum(M));

img_2 = uint8(conv2(imgLena , M, 'same'));

figure(7);
subplot(1,2,1);
imshow(imgLena);
subplot(1,2,2);
imshow(img_2);

filter = fspecial('gaussian', [5 5], 0.25);
figure(8)
mesh(filter);


img_2 = uint8(conv2(imgLena , filter, 'same'));

figure(9);
subplot(1,2,1);
imshow(imgLena);
subplot(1,2,2);
imshow(img_2);





