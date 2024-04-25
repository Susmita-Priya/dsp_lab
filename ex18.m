close all;
clear;
clc;
x=-8:1:8;
y=[0 0 0 0 0 0 -1 -1 0 1 1 0 0 0 0 0 0];

subplot(2,1,1);
stem(x,y);
grid on;

x1=x-3;
subplot(2,1,2);
stem(x1,y);
grid on;