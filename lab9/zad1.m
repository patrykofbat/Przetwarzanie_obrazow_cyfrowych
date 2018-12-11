close all;
clearvars;
clc;


img = imread('segmentation/knee.png');
figure(1);
imshow(img);
[m, n] = size(img);

visited = zeros(m, n);
segmented = zeros(m, n);
stack = zeros(1000, 2);

[x, y] = ginput(1);

stack(1,1) = round(x);
stack(1,2) = round(y);
visited(round(x), round(y)) = 1;
segmented(round(x),round(y)) = 1;
iStack = [stack(1,1), stack(1,2)];

while(~isempty(stack))
    
    for i = -1:2
        for j = -1:2
            
        end
    end
    
    
    
    
end
