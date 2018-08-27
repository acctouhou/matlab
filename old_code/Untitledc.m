clc;
clear;
format long e


 A = importdata('def.txt',' ',1);
 time=A.data(:,1)
  temp=A.data(:,2)
  plot(time(1:600),temp(1:600))