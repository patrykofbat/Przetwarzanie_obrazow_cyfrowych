clearvars;
close all;
clc;


img_1 = imread('pointbased/lena.bmp');
img_2 = imread('pointbased/jet.bmp');

figure(1);
imshow(img_1);
title('original');

K = imadd(img_1, img_2, 'uint16');

figure(2);
imshow(K, []);
title('add');


K_2 = imlincomb(1.5, img_1, 1.5, img_2);

figure(3);
imshow(K_2, []);
title('linear combination');


lena16 = int16(img_1);
jet16 = int16(img_2);

K_3 = imsubtract(lena16, jet16);

figure(4);
imshow(K_3, []);
title('subtraction');

K_4 = imabsdiff(img_1, img_2);


figure(5);
imshow(K_4);
title('abs');

K_5 = immultiply(lena16, jet16);

figure(6);
imshow(K_5);
title('multiplication');


mask = boolean(imread('pointbased/kolo.bmp'));

K_6 = immultiply(img_1, mask);

figure(7);
imshow(K_6);
title('multiplication boolean');

K_7 = imcomplement(img_1);

figure(8);
imshow(K_7);
title('negative');





