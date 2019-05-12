clc
clear
im = imread('6.jpg');
im=rgb2gray(im);
BW=im>50; 
BW=~BW;
cc = bwconncomp(BW); 
stats = regionprops(cc, 'Area'); 
idx = find([stats.Area] < 160); 
BW2 = ismember(labelmatrix(cc), idx); 
imtool(BW2)