clear vars
close all
clc


img=imread('archiwum/parrot.bmp');
imshow(img);

xReScale=2;
yReScale=3;

[y, x] = size(img);
nY = round(y * yReScale);
nX = round(x * xReScale);

xStep = x/nX;
yStep = y/nY;

nImg = uint8(zeros(nY,nX));


for i = 0:nX-1
    for j = 0:nY-1
        ii = i*xStep;
        jj = j*yStep;
        i1 = floor(ii);
        j1 = floor(jj);
        i2 = i1+1;
        j2 = j1+1;
        
        if i2 > x-1
            i2 = x-1;
        end
        if j2 > y-1
            j2 = y-1;
        end
        
        in = rem(ii,1);
        jn = rem(jj,1);
        
        nImg(j+1,i+1) = img(j1+1,i1+1)*(1-in)*(1-jn) + img(j1+1,i2+1)*in*(1-jn)+img(j2+1,i2+1)*in*jn+img(j2+1,i1+1)*(1-in)*jn;
    end
end

figure(2);
imshow(uint8(nImg));