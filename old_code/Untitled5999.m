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
a=c_plus(a);
a=check(a);
c=[0 0 0 0];
for i=2:3
filename=[ num2str(i)]; 
b=importdata(filename,' ',0);
b=c_plus(b);
b=check(b);
a=cat(1,a,b);
d=b(:,15:18);
c=cat(1,c,d);
end
i=4;
filename=[ num2str(i)]; 
b=importdata(filename,' ',0);
b=check(b);
d=b(:,15:18);
c=cat(1,c,d);
c(1,:)=[];