close all;
clear;
clc;
x=[1 2 3 4 5];
y=[1 2 3 4 5];
x1=-fliplr(x);
y1=fliplr(y);

subplot(2,1,1);
stem(x,y);
grid on;

subplot(2,1,2);
stem(x1,y1);
grid on;