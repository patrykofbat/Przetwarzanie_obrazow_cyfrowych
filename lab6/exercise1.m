clear all 
clc
close all

A = load('MR_data.mat');
fn = fieldnames(A);
local_window = [10 10];
s = 0.5;



figure(1);
for i=1:5
    subplot(2,5,i)
    imshow(A.(fn{i}), []);
    title(fn{i});
    subplot(2,5, i+5);
    imshow(convolution(A.(fn{i}), local_window), []);
    title(strcat(fn{i},' sploted'));
    
end

figure(2);
for i=1:5
    subplot(2,5,i)
    imshow(A.(fn{i}), []);
    title(fn{i});
    subplot(2,5, i+5);
    imshow(bilateral(A.(fn{i}), local_window), []);
    title(strcat(fn{i},' bilateral'));
    
end


