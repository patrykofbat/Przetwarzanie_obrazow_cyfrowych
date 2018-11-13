close all;
clearvars;
clc;

img = imread('jet.bmp');
maski = load('maskiPP.mat');
figure(1)
imshow(img);


img_2 = uint8(conv2(img , maski.R1, 'same'));
figure(2)
subplot(1,2,1);
imshow(img_2 + 128, []);
subplot(1,2,2);
imshow(abs(img_2), []);

img_2 = uint8(conv2(img , maski.R2, 'same'));

figure(3)
subplot(1,2,1);
imshow(img_2 + 128, []);
subplot(1,2,2);
imshow(abs(img_2), []);


img_2 = uint8(conv2(img , maski.P1, 'same'));
figure(4)
subplot(1,2,1);
imshow(img_2 + 128, []);
subplot(1,2,2);
imshow(abs(img_2), []);

img_2 = uint8(conv2(img , maski.P2, 'same'));

figure(5)
subplot(1,2,1);
imshow(img_2 + 128, []);
subplot(1,2,2);
imshow(abs(img_2), []);

img_2 = uint8(conv2(img , maski.S1, 'same'));
figure(6)
subplot(1,2,1);
imshow(img_2 + 128, []);
subplot(1,2,2);
imshow(abs(img_2), []);

img_2 = uint8(conv2(img , maski.S2, 'same'));

figure(7)
subplot(1,2,1);
imshow(img_2 + 128, []);
subplot(1,2,2);
imshow(abs(img_2), []);


OW = uint8(sqrt(conv2(img, maski.S1, 'same').^2 + conv2(img, maski.S2, 'same').^2));

figure(8)
imshow(OW);


OW = uint8(abs(conv2(img, maski.S1, 'same')) + abs(conv2(img, maski.S2, 'same')));

figure(9)
imshow(OW);
