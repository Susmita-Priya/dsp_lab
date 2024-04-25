function[x y]=conv_func(x1,x2,y1,h)

m1=min(x1)+min(x2);
m2=max(x1)+max(x2);

x=m1:1:m2;
y=conv(y1,h);
