info_jpg = imfinfo('lena.jpg')
info_bmp = imfinfo('lena.bmp')

img_jpg = imread('lena.jpg');
img_bmp = imread('lena.bmp');
imshow(img_jpg);
figure;
imshow(img_bmp);
figure;

img_bmp_gray = rgb2gray(img_bmp);
imshow(img_bmp_gray);

imwrite(img_bmp_gray, 'lena_gray.bmp');

figure;

colormap gray;

mesh(img_bmp_gray)

figure;

plot(img_bmp_gray(10,:));

figure;

plot(img_bmp_gray(:,10));


