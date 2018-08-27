clc;
clear;
format long e
%%%%%%%%%%%%%%%%
i=1;
gd=59;
n=(gd+1)^2
%%%%%%%%%%%%

for i=1:35

filename=['Iteration' num2str(i) '.inp']; 
a=importdata(filename,',',0);
filename=['Diff_Iteration' num2str(i) '.inp']; 
b=importdata(filename,',',0);
filename=['ID_e_p_perm_' num2str(i) '.txt']; 
c=importdata(filename,',',0);
x=a(:,2);
y=a(:,3);
tx=(max(x)-min(x))/gd;
ty=(max(y)-min(y))/gd;
[xi, yi] = meshgrid(min(x):tx:max(x),min(y):ty:max(y));
z_1=a(:,4);
z_1=vb(x,y,z_1,gd,xi,yi);
z_1=reshape(z_1,[n,1]);
z_2=a(:,5);
z_2=vb(x,y,z_2,gd,xi,yi);
z_2=reshape(z_2,[n,1]);
z_3=a(:,6);
z_3=vb(x,y,z_3,gd,xi,yi);
z_3=reshape(z_3,[n,1]);
z_4=a(:,7);
z_4=vb(x,y,z_4,gd,xi,yi);
z_4=reshape(z_4,[n,1]);
z_5=a(:,8);
z_5=vb(x,y,z_5,gd,xi,yi);
z_5=reshape(z_5,[n,1]);
z_6=a(:,9);
z_6=vb(x,y,z_6,gd,xi,yi);
z_6=reshape(z_6,[n,1]);
z_7=a(:,10);
z_7=vb(x,y,z_7,gd,xi,yi);
z_7=reshape(z_7,[n,1]);
z_8=a(:,11);
z_8=vb(x,y,z_8,gd,xi,yi);
z_8=reshape(z_8,[n,1]);
z_9=a(:,12);
z_9=vb(x,y,z_9,gd,xi,yi);
z_9=reshape(z_9,[n,1]);
z_10=a(:,13);
z_10=vb(x,y,z_10,gd,xi,yi);
z_10=reshape(z_10,[n,1]);
z_11=a(:,14);
z_11=vb(x,y,z_11,gd,xi,yi);
z_11=reshape(z_11,[n,1]);
z_12=a(:,15);
z_12=vb(x,y,z_12,gd,xi,yi);
z_12=reshape(z_12,[n,1]);

z_13=b(1:2037,2);
z_13(2037:4487)=0;
z_13=vb(x,y,z_13,gd,xi,yi);
z_13=reshape(z_13,[n,1]);
z_14=c(1:2037,2);
z_14(2037:4487)=0;
z_14=vb(x,y,z_14,gd,xi,yi);
z_14=reshape(z_14,[n,1]);
z_15=c(1:2037,3);
z_15(2037:4487)=0;
z_15=vb(x,y,z_15,gd,xi,yi);
z_15=reshape(z_15,[n,1]);
z_16=c(1:2037,4);
z_16(2037:4487)=0;
z_16=vb(x,y,z_16,gd,xi,yi);
z_16=reshape(z_16,[n,1]);
filename=num2str(i); 
fid =fopen(filename, 'w'); 
x=reshape(xi,[n,1]);
y=reshape(yi,[n,1]);
for tt=1:n
    fprintf(fid,'%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d',x(tt),y(tt),z_1(tt),z_2(tt),z_3(tt),z_4(tt),z_5(tt),z_6(tt),z_7(tt),z_8(tt),z_9(tt),z_10(tt),z_11(tt),z_12(tt),z_13(tt),z_14(tt),z_15(tt),z_16(tt));
    fprintf(fid,'\n');
end
fclose(fid);
end

