close all;
clearvars;
clc;

img = imread('lenaSzum.bmp');


img_2 = medfilt2(img);
img_3 = imabsdiff(img, img_2);

figure(1);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_2);
subplot(1,3,3);
imshow(img_3, []);

img = imread('lena.bmp');

filter = fspecial('average');
img_2 = uint8(conv2(img , filter, 'same'));
img_3 = imabsdiff(img, img_2);

figure(2);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_2);
subplot(1,3,3);
imshow(img_3, []);


img_2 = medfilt2(img);
img_3 = imabsdiff(img, img_2);

figure(3);
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(img_2);
subplot(1,3,3);
imshow(img_3, []);

for i=1:9
    img_2 = medfilt2(img_2, [5 5]);
end
figure(4)
imshow(img_2)

