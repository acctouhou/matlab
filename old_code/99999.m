clc;
clear;
format long e


 A = importdata('def.txt',' ',1);
 time=a.data(:,1)
 temp-=a.data(:,2)
 plot(time,temp)