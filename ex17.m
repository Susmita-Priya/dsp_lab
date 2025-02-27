close all;
clear;
clc;

x1=[-8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8];
y1=[0 0 0 0 0 0 0 -1 0 1 0 0 0 0 0 0 0];

x2=-fliplr(x1);
y2=fliplr(y1);

x=min(min(x1),min(x2)):1:max(max(x1),max(x2));

m1=zeros(1,length(x));
m2=zeros(1,length(x));
temp=1;

for i=1:length(x)
    if(x(i)>=min(x1) && x(i)<=max(x1))
        m1(i)=y1(temp);
        temp=temp+1;
    else
        m1(i)=0;
    end
end

temp=1;
for i=1:length(x)
    if(x(i)>=min(x2) && x(i)<=max(x2))
        m2(i)=y2(temp);
        temp=temp+1;
    else
        m2(i)=0;
    end
end

y=m1+m2;

subplot(2,1,1);
stem(x2,y2);
grid on;

subplot(2,1,2);
stem(x,y);
grid on;