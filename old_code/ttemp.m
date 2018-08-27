clc;
clear;

for i=1:15
    a(1:100,1:100,i)=i;
end
a=reshape(a,[100*100,15]);
t=c_plus_all(a,100);

cc=t(2,2,:)
