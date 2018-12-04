close all;
clearvars;
clc;


img = zeros(11);
img(5, 4) = 1;
img(2, 1) = 1;
img(1, 11) = 1;
img(3, 3) = 1;


[H, theta, rho] = hough(img, 'RhoResolution', 0.1, 'ThetaResolution', 0.5);
data = [181 243];
p = rho(151);
O = theta(128);

x = 0:0.1:10;
y = ((p - x*cosd(O)) / sind(O));
figure(1);
imshow(img, []);
hold on;
plot(x+1, y+1);