clc;
clear;

%%%%%%%%%%%%%%%%
gd=99;
n=(gd+1)^2
model=1;
%%%%%%%%%%%%
for yy=1:100
    for zz=1:100
        z_8(yy,zz)=yy*1000+zz;
    end
end
z_8=reshape(z_8,[n,1]);
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
%axis([-inf, inf,-inf, inf, -4*10^-6, 4*10^-5]);
z_1=reshape(z_1,[n,1]);
filename=['x_disp' num2str(i) '.png']; 
title(filename)
print(gcf,'-dpng',filename)

%*10^12
z_2=a(:,5)*10^12;
z_2=vb(x,y,z_2,gd,xi,yi);
mesh(xi,yi,z_2)
view(20,490)
%axis([-inf, inf,-inf, inf, -8*10^-6, inf]);
z_2=reshape(z_2,[n,1]);
filename=['y_disp' num2str(i) '.png']; 
title(filename)
print(gcf,'-dpng',filename)
%*10^3
z_3=a(:,6)*10^3;
z_3=vb(x,y,z_3,gd,xi,yi);
mesh(xi,yi,z_3)
view(20,490)

%axis([-inf, inf,-inf, inf, -1.341550721935700e+04, 2.179690660640166e+06]);
z_3=reshape(z_3,[n,1]);
filename=['press' num2str(i) '.png']; 
title(filename)
print(gcf,'-dpng',filename)
%*10^2
z_4=b(1:size_b,2)*10^2;
z_4(size_b:size_a)=0;
z_4=vb(x,y,z_4,gd,xi,yi);
mesh(xi,yi,z_4)
view(20,490)
%axis([-inf, inf,-inf, inf, 0, 10.589767856000000]);
z_4=reshape(z_4,[n,1]);
filename=['c' num2str(i) '.png']; 
title(filename)
print(gcf,'-dpng',filename)
%*10^2
z_5=c(1:size_b,2)*10^2;
z_5(size_b:size_a)=0;
z_5=vb(x,y,z_5,gd,xi,yi);
mesh(xi,yi,z_5)
view(20,490)
%axis([-inf, inf,-inf, inf, 0, 8.450511804272059e+09]);
z_5=reshape(z_5,[n,1]);
filename=['e' num2str(i) '.png'];
title(filename)
print(gcf,'-dpng',filename)

%*10^6
z_6=c(1:size_b,3)*10^6;
z_6(size_b:size_a)=0;
z_6=vb(x,y,z_6,gd,xi,yi);
mesh(xi,yi,z_6)
view(20,490)
%axis([-inf, inf,-inf, inf, 0, 2.887640000000000]);
z_6=reshape(z_6,[n,1]);
filename=['pr' num2str(i) '.png']; 
title(filename)
print(gcf,'-dpng',filename)
%*10^15
z_7=c(1:size_b,4)*10^15;
z_7(size_b:size_a)=0;
z_7=vb(x,y,z_7,gd,xi,yi);
mesh(xi,yi,z_7)
view(20,490)
%axis([-inf, inf,-inf, inf, 0,4.0250000000000e-13]);
z_7=reshape(z_7,[n,1]);

filename=['per' num2str(i) '.png']; 
title(filename)
print(gcf,'-dpng',filename)

filename=num2str(i); 
fid =fopen(filename, 'w'); 
for tt=1:n
    fprintf(fid,'%d %d %d %d %d %d %d %d %d %d ',z_1(tt),z_2(tt),z_3(tt),z_4(tt),z_5(tt),z_6(tt),z_7(tt),z_8(tt),model,i);
    fprintf(fid,'\n');
end

end


