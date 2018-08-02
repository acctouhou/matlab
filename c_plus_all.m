function [ final ] = c_plus_all( a,ss )

%a(length(a):ss^2,1)=987;
tt=reshape(a,[ss,ss,15]);
nt(2:ss-1,2:ss-1,135)=0;
for i=2:ss-1
    for j=2:ss-1
       nt(i,j,1:15)=tt(i-1,j-1,:);
       nt(i,j,16:30)=tt(i,j-1,:);
       nt(i,j,31:45)=tt(i+1,j-1,:);
       nt(i,j,46:60)=tt(i-1,j,:);
       nt(i,j,61:75)=tt(i,j,:);
       nt(i,j,76:90)=tt(i+1,j,:);
       nt(i,j,91:105)=tt(i-1,j+1,:);
       nt(i,j,106:120)=tt(i,j+1,:);
       nt(i,j,121:135)=tt(i+1,j+1,:);
    end
end

nt([1:ss],[1 ss],1)=987;
nt([1 ss],[1:ss],1)=987;
%tt(10:100,1:65,1)=987;
final=reshape(nt,[ss*ss,135]);
final(final(:,1)==987,:)=[];
%final(:,[1 ])=[];


end
