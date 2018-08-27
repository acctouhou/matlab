function [ sum ] = Untitled2( x )
[MAXX,MAXY]=size(x);
sum=0;
temp=1/256;
for i=1:MAXX
    for j= 1:MAXY
      sum=sum-temp*log(temp);
    end
end
end

