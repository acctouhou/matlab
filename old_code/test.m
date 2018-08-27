function [temp1,temp2 ] = test( v,x )
x=x/180*pi();
t=v*sin(x)/9.8;
r=v*cos(x)*t*2;
h=0.5*9.8*t*t;
for i=1:100
    temp1(i)=i/100*r;
end
for i=1:100
    temp2(i)=-4*h/r/r*((temp1(i)-0.5*r)^2)+h;
end

end

