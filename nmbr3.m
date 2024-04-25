close all;
clear all;
clc;

x1=[-1 0 1 2 3 4 5];
y1=[-1 0.5 1 -0.5 0 0 0];
x2=[-1 0 1 2 3 4 5];
h=[0 0.5 1 -0.5 0.5 0 0];

subplot(3,1,1);
stem(x1,y1);
grid on;
xlabel('n');
ylabel('amplitude');
title('Original Signal');

subplot(3,1,2);
stem(x2,h);
grid on;
xlabel('n');
ylabel('amplitude');
title('impulse response signal');

n1=min(x1)+min(x2);
n2=max(x1)+max(x2);

x=n1:1:n2;
y=conv(y1,h);


subplot(3,1,3);
stem(x,y);
grid on;
xlabel('n');
ylabel('amplitude');
axis([-1 5 -1 2]);
title('convolution Sum');

