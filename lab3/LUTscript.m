clearvars;
close all;
clc;

load pointbased/funkcjeLUT.mat

figure(1);
plot(kwadratowa);

imgLena = imread('pointbased/lena.bmp');

figure(2);
imshow(imgLena);


A = intlut(uint8(imgLena), kwadratowa);

figure(3);
imshow(A);


figure(4);
LUT(imgLena, kwadratowa);


figure(5);
LUT(imgLena, log);


figure(6);
LUT(imgLena, odwlog);


figure(7);
LUT(imgLena, odwrotna);


figure(8);
LUT(imgLena, pierwiastkowa);


figure(9);
LUT(imgLena, pila);


LUT(imgLena, wykladnicza);
