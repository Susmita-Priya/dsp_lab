close all;
clear;
clc;
n=[0:10];
x=rand(1,length(n));
y=randn(1,length(n));
plot(n,x);
grid on;
hold on;
plot(n,y,'g');
grid on;