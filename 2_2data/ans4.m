function [ nt ] = ans4( a,ss,para )
tt=reshape(a,[ss,ss,para]);
for i=1:ss-1
    for j=1:ss-1
        nt(i,j,:)=tt(i,j,:);%%%%%%%self
    end
end
nt=reshape(nt,[(ss-1)*(ss-1),para]);
end