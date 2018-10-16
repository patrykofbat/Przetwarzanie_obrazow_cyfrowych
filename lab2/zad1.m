clearvars;
close all;
clc;
parrot_img=imread('archiwum/parrot.bmp');
imshow(parrot_img);

xReScale=1.5;
yReScale=1.5;

[y, x] = size(parrot_img);
nY = round(y * yReScale);
nX = round(x * xReScale);

xStep = x/nX;
yStep = y/nY;

nParrot = uint8(zeros(nY,nX));


for i=0:nX-1
    for j=0:nY-1
        nI = round(yStep * i);
        nJ = round(xStep * j);
        
        if(nI > y-1)
            nI = y-1;
        end
        
        if(nJ > x-1)
            nJ = x-1;
        end
        
        nParrot(i+1,j+1) = parrot_img(nI+1, nJ+1);
        
        
    end
end

figure(2);
imshow(nParrot);


