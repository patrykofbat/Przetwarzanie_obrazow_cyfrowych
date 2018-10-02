lena_gray = imread('lena_gray.bmp');
[X,map] = gray2ind(lena_gray, 256);

%imshow(X, map);
%figure;

map_2 = colormap(winter);
figure(1);
imshow(X, map_2);