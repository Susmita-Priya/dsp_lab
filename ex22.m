close all;
clear;
clc;

x1=[-1 0 1 2];
y1=[-1 0.5 1 -0.5];
x2=[0 1 2 3];
h=[0.5 1 -0.5 0.5];

[x y]=conv_func(x1,x2,y1,h);

subplot(3,1,1);
stem(x1,y1);
grid on;

subplot(3,1,2);
stem(x2,h);
grid on;

subplot(3,1,3);
stem(x,y);
grid on;
