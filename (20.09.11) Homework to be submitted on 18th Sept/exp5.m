t=0:0.001:10; 	% time scale
k=0:1:10000; 	% samples of fft
x=0.5*cos(2*pi*10*t)+cos(2*pi*20*t)-0.2*cos(2*pi*30*t);    % input with some phase & frequency
h(t>=0)=exp(-t); 	% impulse response of linear filter
h1(t>=0)=(2/1.732)*exp(-0.5*t).*sin(1.732*0.5*t);	 % impulse response of non-linear filter
H=fft(h); 	% 10001 samples of Fourier transform of linear filter
H1=fft(h1);	 % 10001 samples of Fourier transform of non-linear filter
X=fft(x); 	% Fourier transform of input
Y=H.*X; 	% frequency response of linear filter
Y1=H1.*X;	 % frequency response of non-linear filter
y=ifft(Y); 	% time domain response of linear filter
y1=ifft(Y1); 	% time domain response of non-linear filter
subplot(321)
plot(t,x)
xlabel('time(sec)');
ylabel('x(t)');
legend('Input Signal')
subplot(322)
plot(t,0.001*y)
xlabel('time(sec)');
ylabel('y(t)');
legend('Filtered Response Linear Filter')
title('Linear Filter')
subplot(323)
plot(t,0.001*y1)
xlabel('time(sec)');
ylabel('y(t)');
legend('Filtered Response Non-Linear Filter')
title('Non-Linear Filter')
subplot(324)
plot(k,0.001*abs(H),k,0.001*abs(H1))
xlabel('frequency(Hz)');
ylabel('Magnitude Response');
legend('Linear Filter','Non-Linear Filter')
title('Magnitude Response')
subplot(325)
plot(k,angle(H),k,angle(H1))
xlabel('frequency(Hz)');
ylabel('Phase Response');
legend('Linear Filter','Non-Linear Filter')
title('Phase Response');
