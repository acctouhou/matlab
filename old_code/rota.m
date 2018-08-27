clc;
close all;
clear all;
a=pi()*90/180;
ry=[cos(a) 0 sin(a);0 1 0;-sin(a) 0 cos(a)]
rx=[1 0 0;0 cos(a) -sin(a);0 sin(a) cos(a)]
x=[1 1 1];
y=[1 1 -2];
z=[-1 1 0];
new_x=x*rx
new_y=y*rx
new_z=z*rx