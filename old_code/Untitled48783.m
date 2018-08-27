


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
a(:,15)=i;

b=sum(isnan(a),2);

a(b>0,:)=[];
