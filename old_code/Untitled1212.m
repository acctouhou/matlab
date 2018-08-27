clc;
clear;
format long e
%%%%%%%%%%%%%%%%
i=1;
gd=59;
n=(gd+1)^2;
%%%%%%%%%%%%
filename=[ num2str(i)]; 
a=importdata(filename,' ',0);
x=a(:,1);
y=a(:,2);
tx=(max(x)-min(x))/gd;
ty=(max(y)-min(y))/gd;
[xi, yi] = meshgrid(min(x):tx:max(x),min(y):ty:max(y));
tt=reshape(a,[60,60,18])

tt(2,2,19)=tt(3,2,15)
tt(2,2,20)=tt(3,1,15)
tt(2,2,21)=tt(2,1,15)
tt(2,2,22)=tt(1,1,15)
tt(2,2,23)=tt(1,2,15)
tt(2,2,24)=tt(1,3,15)
tt(2,2,25)=tt(2,3,15)
tt(2,2,26)=tt(3,3,15)
bb=reshape(tt,[3600,26])

