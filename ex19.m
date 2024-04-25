close all;
clear;
clc;
x=-5:1:5;
y=[0 -1 -0.5 0.5 1 1 1 1 0.5 0 0];

subplot(3,1,1);
stem(x,y);
grid on;

x1=x+4;
subplot(3,1,2);
stem(x1,y);
grid on;

x2=x-4;
subplot(3,1,3);
stem(x2,y);
grid on;