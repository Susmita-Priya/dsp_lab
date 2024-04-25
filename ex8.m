close all;
clear;
clc;
x1=[-5 -4 -3 -2 -1 0 1];
y1=input('enter 7 valus');
x2=[1 2 3];
y2=input('enter 3 values');

subplot(3,1,1);
stem(x1,y1);
grid on;

subplot(3,1,2);
stem(x2,y2);
grid on;

x=min(min(x1),min(x2)):1:max(max(x1),max(x2));
[y]=mul_func(x1,x2,y1,y2,x);

subplot(3,1,3);
stem(x,y);
grid on;
