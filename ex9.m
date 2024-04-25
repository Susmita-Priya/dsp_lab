close all;
clear;
clc;

x=-5:1:4;
y=[2 0 1 2 3 4 7 8 6 5];
value=input('enter scalling factor:');

subplot(3,1,1);
stem(x,y);
grid on;

temp=1;
for i=1:length(x)
    if(rem(x(i),value)==0)
        x1(temp)=x(i)./value;
        y1(temp)=y(i);
        temp=temp+1;
    end
end

subplot(3,1,2);
stem(x1,y1);
grid on;

temp=1;
low=min(x)*value;
high=max(x)*value;
x2=low:1:high;
y2=zeros(1,length(x2));

for i=1:length(x2)
    if(rem(x2(i),value)==0)
     y2(i)=y(temp);
     temp=temp+1;
    end
end

subplot(3,1,3);
stem(x2,y2);
grid on;

