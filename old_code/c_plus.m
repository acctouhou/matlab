function [ final ] = c_plus( a,ss )

a(length(a):ss^2,1)=987;
tt=reshape(a,[ss,ss,7]);
for i=2:ss-1
    for j=2:ss-1
        tt(i,j,8)=tt(i+1,j,1);
        tt(i,j,9)=tt(i+1,j-1,1);
        tt(i,j,10)=tt(i,j-1,1);
        tt(i,j,11)=tt(i-1,j-1,1);
        tt(i,j,12)=tt(i-1,j,1);
        tt(i,j,13)=tt(i-1,j+1,1);
        tt(i,j,14)=tt(i,j+1,1);
        tt(i,j,15)=tt(i+1,j+1,1);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        tt(i,j,16)=tt(i+1,j,3);
        tt(i,j,17)=tt(i+1,j-1,3);
        tt(i,j,18)=tt(i,j-1,3);
        tt(i,j,19)=tt(i-1,j-1,3);
        tt(i,j,20)=tt(i-1,j,3);
        tt(i,j,21)=tt(i-1,j+1,3);
        tt(i,j,22)=tt(i,j+1,3);
        tt(i,j,23)=tt(i+1,j+1,3);
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        tt(i,j,24)=tt(i+1,j,4);
        tt(i,j,25)=tt(i+1,j-1,4);
        tt(i,j,26)=tt(i,j-1,4);
        tt(i,j,27)=tt(i-1,j-1,4);
        tt(i,j,28)=tt(i-1,j,4);
        tt(i,j,29)=tt(i-1,j+1,4);
        tt(i,j,30)=tt(i,j+1,4);
        tt(i,j,31)=tt(i+1,j+1,4);
        %%%%%%%%%%%%%%%%%%%%%
        tt(i,j,32)=tt(i+1,j,5);
        tt(i,j,33)=tt(i+1,j-1,5);
        tt(i,j,34)=tt(i,j-1,5);
        tt(i,j,35)=tt(i-1,j-1,5);
        tt(i,j,36)=tt(i-1,j,5);
        tt(i,j,37)=tt(i-1,j+1,5);
        tt(i,j,38)=tt(i,j+1,5);
        tt(i,j,39)=tt(i+1,j+1,5);
        %%%%%%%%%%%%%%%%%%%%%%%%
         tt(i,j,40)=tt(i+1,j,6);
        tt(i,j,41)=tt(i+1,j-1,6);
        tt(i,j,42)=tt(i,j-1,6);
        tt(i,j,43)=tt(i-1,j-1,6);
        tt(i,j,44)=tt(i-1,j,6);
        tt(i,j,45)=tt(i-1,j+1,6);
        tt(i,j,46)=tt(i,j+1,6);
        tt(i,j,47)=tt(i+1,j+1,6);
        %%%%%%%%%%%%%%%%%%%%%%%%%
        tt(i,j,48)=tt(i+1,j,7);
        tt(i,j,49)=tt(i+1,j-1,7);
        tt(i,j,50)=tt(i,j-1,7);
        tt(i,j,51)=tt(i-1,j-1,7);
        tt(i,j,52)=tt(i-1,j,7);
        tt(i,j,53)=tt(i-1,j+1,7);
        tt(i,j,54)=tt(i,j+1,7);
        tt(i,j,55)=tt(i+1,j+1,7);
        %%%%%%%%%%%%%%%%%%%%%%%%%
        tt(i,j,56)=tt(i+1,j,2);
        tt(i,j,57)=tt(i+1,j-1,2);
        tt(i,j,58)=tt(i,j-1,2);
        tt(i,j,59)=tt(i-1,j-1,2);
        tt(i,j,60)=tt(i-1,j,2);
        tt(i,j,61)=tt(i-1,j+1,2);
        tt(i,j,62)=tt(i,j+1,2);
        tt(i,j,63)=tt(i+1,j+1,2);
    end
end
tt([1:ss],[1 ss],1)=987;
tt([1 ss],[1:ss],1)=987;
%tt(10:100,1:65,1)=987;
final=reshape(tt,[ss*ss,63]);
final(final(:,1)==987,:)=[];
final(:,[1 8:15])=[];
end

