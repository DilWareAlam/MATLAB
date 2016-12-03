clear
clc
img=imread('1.jpg');
img1=img(:,:,1);
img2=img(:,:,2);
img3=img(:,:,3);
rHist1 = imhist(img1);%histogram of red band
gHist1 = imhist(img2);%histogram of green band
bHist1 = imhist(img3);%histogram of blue band
figure;
subplot(2,3,1),imshow(img1),title('red band');
subplot(2,3,2),imshow(img2),title('green band');
subplot(2,3,3),imshow(img3),title('blue band');
subplot(2,3,4),imhist(img1),title('hist of R');
subplot(2,3,5),imhist(img2),title('hist of G');
subplot(2,3,6),imhist(img3),title('hist of B');