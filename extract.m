function [BW2]=  extract(x)
if x==1
im = imread('1.jpg');
else 
 im = imread('2.jpg');   
end 
im=rgb2gray(im);
BW=im>50; 
BW=~BW;
cc = bwconncomp(BW); 
stats = regionprops(cc, 'Area'); 
idx = find([stats.Area] < 270); 
BW2 = ismember(labelmatrix(cc), idx); 
%imtool(BW2)
end
