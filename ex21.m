close all;
clear;
clc;
x1=-6:1:6;
y1=[0 0 0 0 -1 -1 0 1 1 0 0 0 0];
subplot(3,1,1);
stem(x1,y1);
grid on;

n=x1-3;
subplot(3,1,2);
stem(n,y1);
grid on;

value=2;
temp=1;
for i=1:length(n)
    if(rem(n(i),value)==0)
        x2(temp)=n(i)./value;
        y2(temp)=y1(i);
        temp=temp+1;
    end
end
subplot(3,1,3);
stem(x2,y2);
grid on;