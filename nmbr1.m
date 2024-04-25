close all;
clear all;
clc;

x1=-6:6;
y1=[0 0 0 0 -1 -1 0 1 1 0 0 0 0];

subplot(3,1,1);
stem(x1,y1);
grid on;
title('Original Signal');

x=x1-3;
subplot(3,1,2);
stem(x,y1);
grid on;
title('after time shifting Signal');

temp=1;
for i=1:length(x)
    if((rem(x(i),2)==0))
        x2(temp)=x(i)./2;
        y2(temp)=y1(i);
        temp=temp+1;
    end
end
subplot(3,1,3);
stem(x2,y2);
grid on;
title('y[n]=x[2n+3]');

