% Program to find duplicate images 

query_image=input('Enter the query image');
qi=rgb2gray(imread(query_image));
lbpQuery=extractLBPFeatures(qi,'Upright',false);
file_location=input('Enter the location where you want to check the duplicate images');
imagefiles=dir('*.jpg');
number_of_images=length(imagefiles);
feature=zeros(number_of_images,2);
for i=1:number_of_images
    currentimage=imagefiles(i).name;
    current=rgb2gray(imread(currentimage));
    lbpCurrent=extractLBPFeatures(current,'Upright',false);
    feature(i,1)=sum((lbpCurrent - lbpQuery).^2);
    feature(i,2)=currentimage;
end
sorted=sortrows(feature,1);
figure
imshow(feature(1,2));
title('Duplicate image is');
    