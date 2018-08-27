function [ nt ] = ans2( a,ss,para )
tt=reshape(a,[ss,ss,para]);
for i=2:ss
    for j=2:ss
        nt(i-1,j-1,:)=tt(i,j,:);%%%%%%%self
    end
end
nt=reshape(nt,[(ss-1)*(ss-1),para]);
end