syms t n
w0=pi;
t0=2; % fundamental timeperiod = 2
n=1:100;
t1=0:.01:10;
a0=(1/t0)*int((t-1),t,-1,1);
an=(2/t0)*int((t-1)*(exp(-sqrt(-1)*n*w0*t)),t,0,2);
% int stands for integration
%here a0,an are fourier coefficients
y = sawtooth(pi*t1); %sawtooth wave
m=1;
for r=[1 10 20 50]
sum=0;
    for j=1:1:r
        sum=sum+(an(j))*exp(sqrt(-1)*w0*n(j)*t1);
    end
subplot(2,4,m);
m=m+1;
plot(t1,sum,t1,y);
xlabel('time');
ylabel('Sum');
legend('Fourier Series', 'Sawtooth Wave');
subplot(2,4,m);
m=m+1;
plot(t1,sum-y);
xlabel('time');
ylabel('Difference');
legend('Gibbs Phenomena');
end