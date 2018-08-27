clc;
close all;
clear all;
temp=100000;
x=randint(1,temp,[1 89]);
v=randint(1,temp,[1 100]);
fid = fopen('out.txt','wt');
for i=1:temp
    [temp1,temp2]=test(v(i),x(i));
    for j=1:100
    fprintf(fid,'%f %f\n',temp1(j),temp2(j));
    end
end
fclose(fid);
fid = fopen('x.txt','wt');
fprintf(fid,'%f %f\n',v,x);
fclose(fid);
plot(temp1,temp2)