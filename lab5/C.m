close all;
clearvars;
clc;

img = imread('moon.bmp');
imshow(img);

M = [0 1 0; 1 -4 1;0 1 0];

M = M/9;

img_2 = uint8(conv2(img , M, 'same'));

imshow(img_2 + 128, []);
figure(2)
imshow(abs(img_2), []);


filter = fspecial('laplacian');

img_2 = uint8(conv2(img , filter, 'same'));

figure(3)
imshow(img_2);

figure(4)
img_3 = imadd(img, img_2);
subplot(1,2,1)
imshow(img_3);
subplot(1,2,2);
imshow(img);


figure(5)
img_3 = imsubtract(img, img_2);
subplot(1,2,1)
imshow(img_3);
subplot(1,2,2);
imshow(img);




    