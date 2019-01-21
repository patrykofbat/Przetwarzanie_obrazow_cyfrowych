clc;
clearvars;
close all;

th = 26;
img = imread('5_Fourier/lunar.bmp');

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

imgfft2 = fft2(img);
fft2abs = log10(abs(imgfft2)+1);
imgfft2(fft2abs > th) = 0;

subplot(2,2,4);
back = ifftshift(imgfft2);
Ori = ifft2(back);
imshow(Ori, []);
title('Usuniete zaklocenia');