% write a program of convolution
% To verify the convolution theorem property of Fourier Transform on MATLAB
clc;
clear all;
close all;
t=0:0.001:2;
x=zeros(size(t)); % m= size of x
h=zeros(size(t)); % m=size of h
x(t>=0 & t<=1)=1; % sample x
subplot(3,2,1); % plot of x(t)
plot(t,x);
axis([0 4 0 4]);
xlabel('time');
ylabel('x(t)');
h(t>=0 & t<=0.5)=2; % sample of h
subplot(3,2,2); % plot of h(t)
plot(t,h);
axis([0 4 0 4]);
xlabel('time');
ylabel('h(t)');
m=length(x);
X=[x,zeros(1,m)]; % to equilize sample as output m+n-1; here 2m-1
H=[h,zeros(1,m)]; % to equilize sample as output m+n-1; here 2m-1
for i=1:2*m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
tt=0:0.001:4;
subplot(3,2,3); % y(t); convolution of x(t) & h(t) without CONV
plot(tt,Y*0.001);
xlabel('time');
ylabel('y(t)');
z=conv(x,h);
subplot(3,2,4);
plot(tt,z*0.001); % y(t); convolution using conv command
xlabel('time');
ylabel('z(t)');
X_f=fft(x); % X(f); fourier transform of x(t)
H_f=fft(h); % H(f); fourier transform of h(t)
Y_f=X_f.*H_f; % Y(f)=X(f).H(f)
y_t=ifft(Y_f); % y(t); inverse fourier transform of Y(f)
subplot(3,2,5);
plot(t,y_t*0.001);
xlabel('time');
ylabel('y_t'); % y(t); using inverse fourier transform
axis([0 4 0 2]);
% convolution theorem y(t)=x(t)*h(t)=ifft X(f).H(f) has been verified