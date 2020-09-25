% Study time domain and single sided as well as double sided
% line spectra of 3 tone signals on MATLAB. Plot the one sided and two sided
% magnitude and phase response for sampling frequency 200 Hz. Comment to
% the magnitude of the response at different sampling frequencies.

A1=1;
A2=2;
A3=1;
f1=10;
f2=20;
f3=30;
fs =50; %sampling frequency 50


t=0:1/fs:1;
x = A1 * cos(2 * pi * f1 * t+pi/3)+ A2 * cos(2 * pi * f2 * t+pi/4) -A3 * cos(2* pi * f3 * t+pi/6);%time domain
X1 = fft(x); %frequancy domain response of signal x
X2=abs(X1); %absolute value of X1
X3=fftshift(X2); %swaps the left and right halves of X2

z=phase(X1); %phase of X1
n = length(x);
c = 0:fs / n:fs - fs / n; %one sided
c1 = -fs/2:fs / n:fs/2 - fs / n; %double sided

subplot(2, 4, 1),plot(t,x);
xlabel('time'),ylabel('amplitude'),title('Time Domain Representation of 3 Tone Signals');

subplot(2, 4, 2),plot(c,X1);
xlabel('frequency'),ylabel('Magnitude'),title('One sided Response');

subplot(2, 4 ,3),plot(c,X2);
xlabel('frequency'),ylabel('Magnitude'),title('One sided Magnitude Response');

subplot(2, 4 ,4),plot(c,X3);
xlabel('frequency'),ylabel('Magnitude'),title('One sided Magnitude Response Centre');

subplot(2, 4, 5),plot(c1,X1);
xlabel('frequency'),ylabel('Magnitude'),title('Two sided Response');

subplot(2,4,6),plot(c1,X2);
xlabel('frequency'),ylabel('Magnitude'),title('Two sided Magnitude Response');

subplot(2, 4 ,7),plot(c1,X3);
xlabel('frequency'),ylabel('Magnitude'),title('Two sided Magnitude Response Center');

subplot(2, 4, 8),plot(c1,z,c,z);
legend('Two sided','one sided')
xlabel('frequency'),ylabel('Magnitude'),title('Twoe sided Phase Response');