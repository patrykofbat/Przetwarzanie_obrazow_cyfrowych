close all;
clearvars;
clc;

img = imread('morfologia/calculator.bmp');
SE = ones(1, 71);
img_erode = imerode(img, SE);
img_rec = imreconstruct(img_erode, img);
img_tophat_rec = img - img_rec;
img_tophat_org = imtophat(img, SE);
SE1 = ones(1, 11);
img_erode_2 = imerode(img_tophat_rec, SE1);
img_rec_2 = imreconstruct(img_erode_2, img_tophat_rec);

figure(1);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_rec);
subplot(1,3,3);
imshow(img_tophat_rec);

figure(2)
subplot(1,3,1);
imshow(img_tophat_rec);
subplot(1,3,2);
imshow(img_tophat_org);

figure(3)
imshow(img_rec_2);
SE2 = ones(1,21);
img_dilated = imdilate(img_rec_2, SE2);
figure(4)
imshow(img_rec_2);
marker = min(img_dilated, img_tophat_rec);
img_rec_3 = imreconstruct(marker, img_tophat_rec);
figure(5)
imshow(img_rec_3);
