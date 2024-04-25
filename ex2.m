clear;
close all;
clc;
x=[0:0.1:10];
y=sin(x);
z=cos(x);
subplot(2,2,1);
plot(x,y);
grid on;
subplot(2,2,2);
plot(x,z);
grid on;
w=90;
yy=2*pi*sin(x+w);
subplot(2,2,3);
plot(x,yy);
grid on;
zz=sin(x+2*w);
subplot(2,2,4);
stem(x,zz,'r');
grid on;
hold on;
subplot(2,2,4);
stem(x,y,'g');
grid on;