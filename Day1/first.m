A = imread('cameraman.tif');
%imshow(A);
%imagesc(A);
%B = imread('C:\Users\ASUS\Documents\Studies\UOV\3.1\IT3143\Day1.flower.jpg');
subplot(1,2,1);
imshow(A);

subplot(1,2,2);

imagesc(A);
colormap(gca,'jet');