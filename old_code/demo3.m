clc;
close all;
clear all;
temp=10000;
x=randint(1,temp,[1 89]);
v=randint(1,temp,[1 100]);
for i=1:temp
    [r(i), h(i)]=test_99(v(i),x(i));
end
fid = fopen('r.txt','wt');
fprintf(fid,'%f\n',r);
fclose(fid);
fid = fopen('x.txt','wt');
fprintf(fid,'%f %f\n',v,x);
fclose(fid);
fid = fopen('h.txt','wt');
fprintf(fid,'%f\n',h);
plot(x,r)
