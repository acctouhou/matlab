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
%x=a(:,1);
%y=a(:,2);
%tx=(max(x)-min(x))/gd;
%ty=(max(y)-min(y))/gd;
%[xi, yi] = meshgrid(min(x):tx:max(x),min(y):ty:max(y));
a=c_plus(a);
temp=sum(isnan(a),2);
a=check(a);
c=[0 0 0 0 0 0 0];
for i=2:34
filename=[ num2str(i)]; 
b=importdata(filename,' ',0);
temp=temp<1
d=b(find(temp),[3:5 15:18]);
b=c_plus(b);
temp=sum(isnan(b),2);
b=check(b);
a=cat(1,a,b);
c=cat(1,c,d);
end
i=35;
filename=[ num2str(i)]; 
b=importdata(filename,' ',0);
temp=temp<1
d=b(find(temp),[3:5 15:18]);
c=cat(1,c,d);
c(1,:)=[];
fid =fopen('x_data', 'w');
[x,~]=size(a);
a(:,[6:14])=[];
for tt=1:x
    fprintf(fid,'%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d',a(tt,3),a(tt,4),a(tt,5),a(tt,6),a(tt,7),a(tt,8),a(tt,9),a(tt,10),a(tt,11),a(tt,12),a(tt,13),a(tt,14),a(tt,15),a(tt,16),a(tt,17),a(tt,18),a(tt,19),a(tt,20),a(tt,21),a(tt,22),a(tt,23),a(tt,24),a(tt,25),a(tt,26),a(tt,27),a(tt,28),a(tt,29),a(tt,30),a(tt,31),a(tt,32),a(tt,33),a(tt,34),a(tt,35),a(tt,36),a(tt,37),a(tt,38),a(tt,39),a(tt,40),a(tt,41),a(tt,42),a(tt,43),a(tt,44),a(tt,45),a(tt,46),a(tt,47),a(tt,48),a(tt,49),a(tt,50),a(tt,51),a(tt,52),a(tt,53),a(tt,54),a(tt,55),a(tt,56),a(tt,57),a(tt,58),a(tt,59),a(tt,60),a(tt,61),a(tt,62),a(tt,63),a(tt,64),a(tt,65));
    %fprintf(fid,'%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d',a(tt,1),a(tt,2),a(tt,3),a(tt,4),a(tt,5),a(tt,6),a(tt,7),a(tt,8),a(tt,9),a(tt,10),a(tt,11),a(tt,12),a(tt,13),a(tt,14),a(tt,15),a(tt,16),a(tt,17),a(tt,18),a(tt,19),a(tt,20),a(tt,21),a(tt,22),a(tt,23),a(tt,24),a(tt,25),a(tt,26));
    fprintf(fid,'\n');
end
fclose(fid);
fid =fopen('y_data', 'w');
[x,y]=size(c);
for tt=1:x
    fprintf(fid,'%d %d %d %d %d %d %d',c(tt,1),c(tt,2),c(tt,3),c(tt,4),c(tt,5),c(tt,6),c(tt,7));
    fprintf(fid,'\n');
end
fclose(fid);

