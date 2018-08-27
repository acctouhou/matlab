clc;
clear;
format long e
a=importdata('a.dump',' ',9);
b=a.data;
[x,y]=size(b);
for i=1:x
    b(i,12)=1;
   if b(i,2)==4||b(i,2)==3
       b(i,12)=0;
   end
   if -0.3*b(i,3)+b(i,5)<130
       b(i,12)=0;
   end
   if b(i,3)>-50||b(i,3)<-60
       b(i,12)=0;
   end
    if b(i,5)>155||b(i,5)<130
       b(i,12)=0;
   end
   
end
a=1;
for i=1:x

    if b(i,12)~=0
        temp(a,:)=b(i,:);
        a=a+1;
    end
end
%[x,y]=size(temp);
