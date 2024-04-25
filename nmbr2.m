close all;
clear all;
clc;

x1=-2:2;
y1=[5 6 3 4 1];

subplot(3,1,1);
stem(x1,y1);
grid on;
xlabel('n');
ylabel('amplitude');
title('Original Signal');

x2=-fliplr(x1);
y2=fliplr(y1);

x=min(min(x1),min(x2)) : max(max(x1),max(x2));

yy1=zeros(1,length(x));
yy2=zeros(1,length(x));

yy1((x>=min(x1)) & (x<=max(x1)))=y1();
yy2((x>=min(x2)) & (x<=max(x2)))=y2();

xe=0.5*(yy1+yy2);
xo=0.5*(yy1-yy2);

subplot(3,1,2);
stem(x,xe);
grid on;
xlabel('n');
ylabel('amplitude');
title('even Signal');

subplot(3,1,3);
stem(x,xo);
grid on;
xlabel('n');
ylabel('amplitude');
title('Odd Signal');