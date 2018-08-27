function [ nt ] = ans3( a,ss,para )
tt=reshape(a,[ss,ss,para]);
for i=1:ss-1
    for j=2:ss
        nt(i,j-1,:)=tt(i,j,:);%%%%%%%self
    end
end
nt=reshape(nt,[(ss-1)*(ss-1),para]);
end