clear vars
close all
clc


img_1 = imread('archiwum/lena.bmp');

img = imresize(img_1,[128,128],'nearest');


nImg_2 = imadjust(img, [], [0 31/255]);



nImg_3 = imadjust(img,[],  [0 15/255]);




nImg_4 = imadjust(img,[], [0 7/255]);



nImg_5 = imadjust(img,[], [0 3/255]);




nImg_6 = imadjust(img,[], [0 1/255]);



subplot(3,1,1);
imshow(nImg_2, []);
subplot(3,1,2);
imshow(nImg_3, []);
subplot(3,1,3);
imshow(img_1);