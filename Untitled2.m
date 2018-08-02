clc;
clear;

%%%%%%%%%%%%%%%%
i=1;
gd=99;
n=(gd+1)^2;
a=zeros(1,135);
c=zeros(1,15);
e=[0 0 0];
for i=1:1
filename=[ num2str(i)]; 
b=importdata(filename,' ',0);
%%%%
info=b(:,16:18);
ttt=reshape(info,[100,100,3]);
ttt([1:100],[1 100],1)=987;
ttt([1 100],[1:100],1)=987;
info=reshape(ttt,[100*100,3]);
info(info(:,1)==987,:)=[];
%%%%%%%%%
b=b(:,1:15);
b=c_plus_all(b,100);
filename=[ num2str(i+1)]; 
d=importdata(filename,' ',0);
d=c_plus_all(d(:,1:15),100);
d=d(:,1:15);
a=cat(1,a,b);
c=cat(1,c,d);
e=cat(1,e,info);
end
fid =fopen('x_data', 'w');
[x,~]=size(a);

for tt=2:x
    fprintf(fid,'%d ',a(tt,1:134));
    fprintf(fid,'%d',a(tt,135));
    fprintf(fid,'\n');
end
fclose(fid);
fid =fopen('y_data', 'w');
for tt=2:x
    fprintf(fid,'%d ',c(tt,1:14));
    fprintf(fid,'%d',c(tt,15));
    fprintf(fid,'\n');
end
fclose(fid);
fid =fopen('local', 'w');
for tt=2:x
    fprintf(fid,'%d ',e(tt,1:2));
    fprintf(fid,'%d',e(tt,3));
    fprintf(fid,'\n');
end
fclose(fid);
for i=1:15
plot(a(:,i));
filename=['final' num2str(i) '.png']; 
print(gcf,'-dpng',filename);
end

