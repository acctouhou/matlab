
clc;
clear;

for i=1:10
    for j=1:10
        a(i,j)=j+10*(i-1);
    end
end
b=reshape(a,[50,2])
c=reshape(b,[10,10])
