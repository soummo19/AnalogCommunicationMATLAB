%{
    a)Plot the real and imaginary part of the following signal
        x(t)=e^(0.5t + j(t+pi/3))
    
    b)For the above signal plot the phase and magnitude.


%}

t = linspace(0,10);
fn = 0.5*t + (t+(pi/3))*i;
x_t = exp(fn);

subplot(411);


plot(t,real(x_t));
xlabel('Time');
ylabel('Real Part');

subplot(412);

plot(t,imag(x_t));
xlabel('Time');
ylabel('Imaginary Part');

subplot(413);

plot(t,abs(x_t));
xlabel('Time');
ylabel('Magnitude');


subplot(414);
plot(n,angle(x_n));
xlabel('Time');
ylabel('Phase');
