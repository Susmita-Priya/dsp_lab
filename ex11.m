close all;
clear;
clc;
x1=input('enter lower limit : ');
x2=input('enter upper limit : ');
x=x1:1:x2;
y=1.*[x>=0];
stem(x,y);
grid on;