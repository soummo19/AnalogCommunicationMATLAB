%{
    Plot the following signals, use log scale for y-axis
    x(t)=e^(2t+1) * (2t+1)  0<t<10
%}

x1 = linspace(0,10);
y1 = (exp(x1 + 2)) .* (2*x1 + 1);
plt1 = semilogy(x1,y1);