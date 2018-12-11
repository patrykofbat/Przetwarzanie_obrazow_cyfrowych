close all;
clearvars;
clc;

img = imread('9_KrawedzieHough/lab112.png');
img = im2bw(img, 60/255);

img = not(img);
img = imclearborder(img);
img = not(img);

SE = strel('square', 5);
img = imclose(img, SE);
img_edge = edge(img, 'canny');
figure(1);
imshow(img, []);





[H, theta, rho]  = hough(img_edge);
A = houghpeaks(H, 8);
lines = houghlines(img_edge,theta,rho, A,'FillGap',5,'MinLength',7);
figure(2);
imshow(img, []); 
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