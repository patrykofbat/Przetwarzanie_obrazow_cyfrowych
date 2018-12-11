close all;
clearvars;
clc;

img = imread('9_KrawedzieHough/kwadraty.png');
img_edge = edge(img, 'log');


figure(1);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(img_edge, []);

[H, theta, rho]  = hough(img_edge, 'RhoResolution', 1, 'ThetaResolution', 1);

A = houghpeaks(H, 8);
figure(2);
subplot(1,2,1);
imshow(img_edge);
subplot(1,2,2);
imshow(H, []);
hold on;
plot(A, 'o');
hold off;



lines = houghlines(img_edge,theta,rho, A,'FillGap',5,'MinLength',7);
figure(3);
imshow(img); 
hold on;
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end
