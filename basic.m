clc
clear all
close all

i=imread('cameraman.tif');
figure,imshow(i);

j=imread('peppers.png');
figure,imshow(j);

gy=rgb2gray(j);
figure,imshow(gy);
