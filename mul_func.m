function[y]=mul_func(x1,x2,y1,y2,x)

m1=zeros(1,length(x));
m2=zeros(1,length(x));
temp=1;

for i=1:length(x)
    if(x(i)>=min(x1)&& x(i)<=max(x1))
        m1(i)=y1(temp);
        temp=temp+1;
    else
        m1(i)=0;
    end
end

temp=1;
for i=1:length(x)
    if(x(i)>=min(x2)&& x(i)<=max(x2))
        m2(i)=y2(temp);
        temp=temp+1;
    else
        m2(i)=0;
    end
end

y=m1.*m2;
