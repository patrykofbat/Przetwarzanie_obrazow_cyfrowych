clear;
clc;
close all;

origin = imread('ccl/ccl1.png');


 image = origin;
 N = 100;
 [h, w] = size(image);
 table_lut = zeros(N);
 count = 1;
 id = 1:N;

 
 imshow(origin); title('original');

    for y = 2 : (h-1)
        
        
        for x = 2 : (w-1)
            if image(y, x) == 255
                neighbors = [image(y-1,x-1) image(y-1,x) image(y-1,x+1) image(y,x-1)];
                
                suma = sum(neighbors);
                
                if suma <= 0
                    image(y, x) = count;
                    count = count + 1;
                elseif suma > 0
                    nonzero = nonzeros(neighbors);
                    minimal = min(nonzero);
                    max_ = max(nonzero);
                    if minimal == max_
                        image(y, x) = minimal;
                    else
                        
                        image(y, x) = minimal;
                        minNeighbors = nonzero(nonzero~=minimal);
                        
                        minimalNeighbor = min(minNeighbors);

                        id = union(minimal, minimalNeighbor, id);
                    end
                end 
            end
        end
    end
    copied = image;
    for i = 1:N
        table_lut(i) = rootIndex(i, id);
    end
    
    for y = 2:(h-1)
        for x = 2:(w-1)
           if (image(y,x) > 0)
             image(y,x) = table_lut(copied(y,x));
           end
        end
    end

     
figure;
imshow(label2rgb(image));
title('after');