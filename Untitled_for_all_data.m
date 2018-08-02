clc;
clear;

%%%%%%%%%%%%%%%%
gd=99;
n=(gd+1)^2;
model=1;
%%%%%%%%%%%%
for yy=1:100
    for zz=1:100
        local(yy,zz)=yy*1000+zz;
    end
end
local=reshape(local,[n,1]);
for i=1:2
filename=['Iteration' num2str(i) '.inp']; 
a=importdata(filename,',',0);
filename=['Diff_Iteration' num2str(i) '.inp']; 
b=importdata(filename,',',0);
filename=['ID_e_p_perm_' num2str(i) '.txt']; 
c=importdata(filename,',',0);
size_a=size(a,1);
size_b=size(b,1);
x=a(:,2);
y=a(:,3);
tx=(max(x)-min(x))/gd;
ty=(max(y)-min(y))/gd;
[xi, yi] = meshgrid(min(x):tx:max(x),min(y):ty:max(y));
%*10^12
z_1=a(:,4)*10^12;
z_1=vb(x,y,z_1,gd,xi,yi);
mesh(xi,yi,z_1)
view(20,490)
z_1=reshape(z_1,[n,1]);

%*10^12
z_2=a(:,5)*10^12;
z_2=vb(x,y,z_2,gd,xi,yi);
mesh(xi,yi,z_2)
view(20,490)
z_2=reshape(z_2,[n,1]);

%*10^3
z_3=a(:,6)*10^3;
z_3=vb(x,y,z_3,gd,xi,yi);
mesh(xi,yi,z_3)
view(20,490)
z_3=reshape(z_3,[n,1]);

z_4=a(:,7)*10^3;
z_4=vb(x,y,z_4,gd,xi,yi);
mesh(xi,yi,z_4)
view(20,490)
z_4=reshape(z_4,[n,1]);

z_5=a(:,8)*10^3;
z_5=vb(x,y,z_5,gd,xi,yi);
mesh(xi,yi,z_5)
view(20,490)
z_5=reshape(z_5,[n,1]);

z_6=a(:,9)*10^3;
z_6=vb(x,y,z_6,gd,xi,yi);
mesh(xi,yi,z_6)
view(20,490)
z_6=reshape(z_6,[n,1]);

z_7=a(:,10)*10^3;
z_7=vb(x,y,z_7,gd,xi,yi);
mesh(xi,yi,z_7)
view(20,490)
z_7=reshape(z_7,[n,1]);

z_8=a(:,11)*10^3;
z_8=vb(x,y,z_8,gd,xi,yi);
mesh(xi,yi,z_8)
view(20,490)
z_8=reshape(z_8,[n,1]);

z_9=a(:,12)*10^3;
z_9=vb(x,y,z_9,gd,xi,yi);
mesh(xi,yi,z_9)
view(20,490)
z_9=reshape(z_9,[n,1]);

z_10=a(:,14)*10^3;
z_10=vb(x,y,z_10,gd,xi,yi);
mesh(xi,yi,z_10)
view(20,490)
z_10=reshape(z_10,[n,1]);
z_11=a(:,15)*10^3;
z_11=vb(x,y,z_11,gd,xi,yi);
z_11=reshape(z_11,[n,1]);


%*10^2
z_12=b(1:size_b,2)*10^2;
z_12(size_b:size_a)=0;
z_12=vb(x,y,z_12,gd,xi,yi);
z_12=reshape(z_12,[n,1]);

%*10^2
z_13=c(1:size_b,2)*10^2;
z_13(size_b:size_a)=0;
z_13=vb(x,y,z_13,gd,xi,yi);
z_13=reshape(z_13,[n,1]);


%*10^6
z_14=c(1:size_b,3)*10^6;
z_14(size_b:size_a)=0;
z_14=vb(x,y,z_14,gd,xi,yi);
z_14=reshape(z_14,[n,1]);

%*10^15
z_15=c(1:size_b,4)*10^15;
z_15(size_b:size_a)=0;
z_15=vb(x,y,z_15,gd,xi,yi);
z_15=reshape(z_15,[n,1]);



filename=num2str(i); 
fid =fopen(filename, 'w'); 
for tt=1:n
    fprintf(fid,'%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d',z_1(tt),z_2(tt),z_3(tt),z_4(tt),z_5(tt),z_6(tt),z_7(tt),z_8(tt),z_9(tt),z_10(tt),z_11(tt),z_12(tt),z_13(tt),z_14(tt),z_15(tt),local(tt),model,i);
    fprintf(fid,'\n');
end

end


