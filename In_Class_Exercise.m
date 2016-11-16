clear all 
clc 
%% 
dt = 1;
t = 0:dt:1000;
A1 = 2;
f1 = 1/50;
A2 = 1;
f2 = 1/15;
A3 = 0.5;
f3 = 1/5;
wave1 = A1*sin(2*pi*f1*t);
wave2 = A2*sin(2*pi*f2*t);
wave3 = A3*sin(2*pi*f3*t);
wavesum = wave1+wave2+wave3;
plot(t,wavesum);
xl = [0 200];
set(gca,'Xlim',xl);
