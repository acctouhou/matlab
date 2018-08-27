clc;
clear;
para=11;
%%%%%%%%%%%%%%%%
i=1;
gd=100;
n=(gd+1)^2;
a1=zeros(1,4*para);
a2=zeros(1,4*para);
a3=zeros(1,4*para);
a4=zeros(1,4*para);
c1=zeros(1,para);
c2=zeros(1,para);
c3=zeros(1,para);
c4=zeros(1,para);
e1=zeros(1,4);
e2=zeros(1,4);
e3=zeros(1,4);
e4=zeros(1,4);

%%%%%%%%%%%%%%

for i=1:1
filename=[ num2str(i)]; 
b=importdata(filename,' ',0);

info=b(:,para+1:para+3);
ttt=reshape(info,[100,100,3]);

b=b(:,1:para);






[b1,i1]=new_1(b,gd,ttt,para);

[b2,i2]=new_2(b,gd,ttt,para);
[b3,i3]=new_3(b,gd,ttt,para);
[b4,i4]=new_4(b,gd,ttt,para);
a1=cat(1,a1,b1);
a2=cat(1,a2,b2);
a3=cat(1,a3,b3);
a4=cat(1,a4,b4);
e1=cat(1,e1,i1);
e2=cat(1,e2,i2);
e3=cat(1,e3,i3);
e4=cat(1,e4,i4);

filename=[ num2str(i+1)]; 
d=importdata(filename,' ',0);
d=d(:,1:para);
d1=ans1(d,gd,para);
d2=ans2(d,gd,para);
d3=ans3(d,gd,para);
d4=ans4(d,gd,para);
c1=cat(1,c1,d1);
c2=cat(1,c2,d2);
c3=cat(1,c3,d3);
c4=cat(1,c4,d4);


end

fid =fopen('x_data1', 'w');
[x,~]=size(a1);
for tt=2:x
    fprintf(fid,'%d ',a1(tt,1:para*4-1));
    fprintf(fid,'%d',a1(tt,para*4));
    fprintf(fid,'\n');
end
fclose(fid);


fid =fopen('x_data2', 'w');
[x,~]=size(a2);
for tt=2:x
    fprintf(fid,'%d ',a2(tt,1:para*4-1));
    fprintf(fid,'%d',a2(tt,para*4));
    fprintf(fid,'\n');
end
fclose(fid);

fid =fopen('x_data3', 'w');
[x,~]=size(a3);
for tt=2:x
    fprintf(fid,'%d ',a3(tt,1:para*4-1));
    fprintf(fid,'%d',a3(tt,para*4));
    fprintf(fid,'\n');
end
fclose(fid);

fid =fopen('x_data4', 'w');
[x,~]=size(a4);
for tt=2:x
    fprintf(fid,'%d ',a4(tt,1:para*4-1));
    fprintf(fid,'%d',a4(tt,para*4));
    fprintf(fid,'\n');
end
fclose(fid);

a5=cat(1,a1(2:end,:),a2(2:end,:),a3(2:end,:),a4(2:end,:));
e5=cat(1,e1(2:end,:),e2(2:end,:),e3(2:end,:),e4(2:end,:));
[x,~]=size(a5);
fid =fopen('x_data5', 'w');
for tt=1:x
    fprintf(fid,'%d ',a5(tt,1:para*4));
    fprintf(fid,'%d',e5(tt,1));
    fprintf(fid,'\n');
end
fclose(fid);

[x,~]=size(c1);
fid =fopen('y_data1', 'w');
for tt=2:x
    fprintf(fid,'%d ',c1(tt,1:para-1));
    fprintf(fid,'%d',c1(tt,para));
    fprintf(fid,'\n');
end
fclose(fid);

fid =fopen('y_data2', 'w');
for tt=2:x
    fprintf(fid,'%d ',c2(tt,1:para-1));
    fprintf(fid,'%d',c2(tt,para));
    fprintf(fid,'\n');
end
fclose(fid);

fid =fopen('y_data3', 'w');
for tt=2:x
    fprintf(fid,'%d ',c3(tt,1:para-1));
    fprintf(fid,'%d',c3(tt,para));
    fprintf(fid,'\n');
end
fclose(fid);

fid =fopen('y_data4', 'w');
for tt=2:x
    fprintf(fid,'%d ',c4(tt,1:para-1));
    fprintf(fid,'%d',c4(tt,para));
    fprintf(fid,'\n');
end
fclose(fid);


c5=cat(1,c1(2:end,:),c2(2:end,:),c3(2:end,:),c4(2:end,:));
fid =fopen('y_data5', 'w');
[x,~]=size(c5);
for tt=1:x
    fprintf(fid,'%d ',c5(tt,1:para-1));
    fprintf(fid,'%d',c5(tt,para));
    fprintf(fid,'\n');
end
fclose(fid);




[x,~]=size(e1);
fid =fopen('local1', 'w');
for tt=2:x
    fprintf(fid,'%d ',e1(tt,1:3));
    fprintf(fid,'%d',e1(tt,4));
    fprintf(fid,'\n');
end
fclose(fid);
fid =fopen('local2', 'w');
for tt=2:x
    fprintf(fid,'%d ',e2(tt,1:3));
    fprintf(fid,'%d',e2(tt,4));
    fprintf(fid,'\n');
end
fid =fopen('local3', 'w');
for tt=2:x
    fprintf(fid,'%d ',e3(tt,1:3));
    fprintf(fid,'%d',e3(tt,4));
    fprintf(fid,'\n');
end
fclose(fid);
fid =fopen('local4', 'w');
for tt=2:x
    fprintf(fid,'%d ',e4(tt,1:3));
    fprintf(fid,'%d',e4(tt,4));
    fprintf(fid,'\n');
end
fclose(fid);
[x,~]=size(e5);
fid =fopen('local5', 'w');
for tt=1:x
    fprintf(fid,'%d ',e5(tt,1:3));
    fprintf(fid,'%d',e5(tt,4));
    fprintf(fid,'\n');
end
fclose(fid);






