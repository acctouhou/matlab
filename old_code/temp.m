clc;
close all;
clear all;
temp_1=imread('122.jpg');
t1 = double(temp_1(:,:,1));
temp_2=imread('test_2.jpg');
t2 = double(temp_2(:,:,1));
temp_3=imread('gray.jpg');
t3 = double(temp_3(:,:,1));
a_1=ent(t1)
a_2=ent(t2)
a_3=ent(t3)
 