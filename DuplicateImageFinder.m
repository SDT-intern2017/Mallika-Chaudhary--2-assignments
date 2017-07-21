% Program to find duplicate image
qi=rgb2gray(imread('brick1.png'));
lbpQuery=extractLBPFeatures(qi,'Upright',false);
cd 'C:\Users\vps\Desktop\DuplicateImage\testImages';
imagefiles=dir('*.png');
number_of_images=length(imagefiles);
feature=zeros(number_of_images,1);
for i=1:number_of_images
    currentimage=imagefiles(i).name;
    current=rgb2gray(imread(currentimage));
    lbpCurrent=extractLBPFeatures(current,'Upright',false);
    e_distance=sum((lbpCurrent - lbpQuery).^2);
    feature(i,1)=e_distance;
    feature(i,2)=i;
end
sorted=sortrows(feature,1);
m=feature(1,2);
k=imagefiles(m,1);
j=k.name;
figure
imshow(j);
title('Duplicate image is');
    
