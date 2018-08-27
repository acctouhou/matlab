function [ nt ] = ans1( a,ss,para )
tt=reshape(a,[ss,ss,para]);
for i=2:ss
    for j=1:ss-1
        nt(i-1,j,:)=tt(i,j,:);
    end
end
nt=reshape(nt,[(ss-1)*(ss-1),para]);
end

