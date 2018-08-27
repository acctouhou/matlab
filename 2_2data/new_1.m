function [ w1,w2 ] = new_1( a,ss,inf,para )
tt=reshape(a,[ss,ss,para]);
t_inf=reshape(inf,[ss,ss,3]);
nt(1:ss-1,1:ss-1,para*4+4)=0;
for i=2:ss
    for j=1:ss-1
        nt(i-1,j,1:para)=tt(i-1,j,:);
        nt(i-1,j,para+1:2*para)=tt(i-1,j+1,:);
        nt(i-1,j,2*para+1:3*para)=tt(i,j,:);%%%%%%%self
        nt(i-1,j,3*para+1:4*para)=tt(i,j+1,:);
        nt(i-1,j,4*para+1)=1;
        nt(i-1,j,4*para+2:4*para+4)=t_inf(i,j,:);
    end
end
final=reshape(nt,[(ss-1)*(ss-1),para*4+4]);
w1=final(:,1:para*4);
w2=final(:,para*4+1:para*4+4);
end

