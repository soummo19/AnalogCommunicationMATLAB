%To study Amplitude and phase distortions using MATLAB
clc;
clear all;
close all;
t=0:0.001:10; % time scale
k=0:1:10000; % samples of fft
x=0.5*cos(2*pi*10*t); % input with some phase & frquency
h(t>=0)=exp(-t); % impulse response of linear filter
h1(t>=0)=(2/1.732)*exp(-0.5*t).*sin(1.732*0.5*t); % impulse response of non-linear filter
H=fft(h); % 10001 samples of fourier transform of linear filter
H1=fft(h1); % 10001 samples of fourier transform of non linear filter
X=fft(x); % fourier transform of input
Y=H.*X; % frequency response of linear filter
Y1=H1.*X; % frequency response of non linear filter
y=ifft(Y); % time domain response of linear filter
y1=ifft(Y1); % time domain response of non linear filter
subplot(3,2,1)
plot(t,x)
xlabel('time(sec)');
ylabel('x(t)');
legend('Input Signal')
subplot(3,2,2)
plot(t,0.001*y)
xlabel('time(sec)');
ylabel('y(t)');
legend('Filtered Response Linear Filter')
title('Linear Filter')
subplot(3,2,3)
plot(t,0.001*y1)
xlabel('time(sec)');
ylabel('y(t)');
legend('Filtered Response Non-Linear Filter')
title('Non-Linear Filter')
subplot(3,2,4)
plot(k,0.001*abs(H),k,0.001*abs(H1))
xlabel('frequency(Hz)');
ylabel('Magnitude Response');
legend('Linear Filter','Non-Linear Filter')
title('Magnitude Response')
subplot(3,2,5)
plot(k,angle(H),k,angle(H1))
xlabel('frequency(Hz)');
ylabel('Phase Response');
legend('Linear Filter','Non-Linear Filter')
title('Phase Response')