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
y = .005*t + wavesum;
hold on 
plot(y);
%%
N = numel(t);
rng(0);
n = randn(1,N);
%plot(n);

xn = y+0.5*n;
figure;
plot(t,wavesum,'b-',t,xn,'r-');
axis([0 200 -4 4]);
xlabel('Time [s]'); ylabel('x(t)');
%%
nfft = 2?nextpow2(N);
[Pxx,f] = periodogram(x p,[],nfft,fs);
figure;
plot(f,Pxx); grid on;
xlabel('Frequency [Hz]' ylim([0 1000]););
ylabel('Power');
title('Auto-Spectrum');
ylim([0 1000]);

