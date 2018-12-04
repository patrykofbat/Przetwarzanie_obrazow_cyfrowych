close all;
clearvars;
clc;

SE = strel('line', 10, 45); 
img = imread('9_KrawedzieHough/dom.png');
img_bw = im2bw(img);

img = imdilate(img_bw, SE);
img_edge = edge(img_bw, 'Canny');
figure(1);
imshow(img_bw);





[H, theta, rho]  = hough(img_edge, 'RhoResolution', 1, 'ThetaResolution', 1);
A = houghpeaks(H, 15);
lines = houghlines(img,theta,rho, A,'FillGap',5,'MinLength',7);
figure(2);
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