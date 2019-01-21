clc;
clearvars;
close all;

img = imread('5_Fourier/dwieFale.bmp');
figure;
subplot(2,2,1);
imshow(img);
title('Oryginalny');

transformed = fft2(img);
transformed = fftshift(transformed);
subplot(2,2,2);
A = abs(transformed);
A = log10(A+1);
imshow(A, []);
title('Amplituda');

subplot(2,2,3);
faza = angle(transformed.*(A > 0.0001));
imshow(faza);
title('Faza');

subplot(2,2,4);
back = ifftshift(transformed);
Ori = ifft2(back);
imshow(Ori, []);
title('Odwrotna transformata');