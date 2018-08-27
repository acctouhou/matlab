function [ r,h ] = test_99( v,x )
x=x/180*pi();
t=v*sin(x)/9.8;
r=v*cos(x)*t*2;
h=0.5*9.8*t*t;
end

