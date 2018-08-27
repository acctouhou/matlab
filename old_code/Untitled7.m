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
temp=sum(isnan(a),2);
a=check(a);
c=[0 0 0 0];
i=2
filename=[ num2str(i)]; 
b=importdata(filename,' ',0);
temp=temp<1
d=b(find(temp),15:18);