clearvars;
close all;
clc;

kolo = imread('pointbased/kolo.bmp');
kwadrat = imread('pointbased/kwadrat.bmp');

b_kolo = boolean(kolo);
b_kwadrat = boolean(kwadrat);

figure(1);
imshow((~b_kolo));
title('not');

figure(2);
imshow((b_kolo & b_kwadrat));
title('and');

figure(3);
imshow(xor(b_kolo, b_kwadrat));
title('xor');

figure(4);
imshow((b_kolo | b_kwadrat));
title('or');