close all;
clear;
clc;
x1=-6:1:6;
y1=[1 0.5 1 0.5 1 0.5 1 0.5 1 0.5 1 0.5 1];
value=2;
temp=1;
for i=1:length(x1)
    if(rem(x1(i),value)==0)
        x2(temp)=x1(i)./value;
        y2(temp)=y1(i);
        temp=temp+1;
    end
end

subplot(2,1,1);
stem(x1,y1);
grid on;

subplot(2,1,2);
stem(x2,y2);
grid on;