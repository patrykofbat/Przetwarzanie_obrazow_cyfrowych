clc;
clearvars;
clear all;

img = imread('5_Fourier/lena.bmp');

figure
subplot(2,3,1);
imshow(img);
title('Oryginalny');

transformed = fft2(img);
transformed = fftshift(transformed);
subplot(2,3,2);
A = abs(transformed);
A = log10(A+1);
imshow(A, []);
title('Amplituda');

subplot(2,3,3);
faza = angle(transformed.*(A > 0.0001));
imshow(faza);
title('Faza');

%% gornoprzepustowa
[f1, f2] = freqspace(512, 'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd(r>0.1) = 0;

filtred = uint8(double(img) .* Hd);
subplot(2,3,4);
imshow(filtred);
title('kolo');

h = fwind1(Hd, hanning(21));
[H f1 f2] = freqz2(h, 512, 512);

subplot(2,3,5);
imshow(uint8(double(img) .* H));
title('Hanning');

%figure;
%mesh(f1,f2,H);
%figure;
%colormap(jet(64)); mesh(f1,f2,Hd);

%% filtr gaussa
figure;

imgSize = 512;
H = fspecial('gaussian',imgSize,8.0);
hImg = mat2gray(H);

fourier = fft2(img);
fourier = fftshift(fourier);
fourier = fourier .* H;

subplot(1,3,1);
movedFour = ifftshift(fourier);
filtered = ifft2(movedFour);
imshow(abs(filtered), []);
title('Po filtracji Gaussa');

subplot(1,3,2);
A = abs(fourier);
A = log10(A+1);
imshow(A, []);
title('Amplituda');

subplot(1,3,3);
faza = angle(fourier.*(A > 0.0001));
imshow(faza, []);
title('Faza');
