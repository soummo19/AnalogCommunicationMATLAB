t = -5:0.01:5; % input
X = @(t) (t>=-1 & t<=1);
H = @(t) (t>=-1 & t<=1);
Y = @(t) conv(X(t) , H(t)); % output
S = @(X) conv(X , H(t));
a1 = 2; a2 = 3; % amplitude given by user
t = -5:0.01:5;
x1 = a1.*X(t);
x2 = a2.*X(t);
subplot(1,2,1);
plot(S(x1+x2));
title('S(a1*x1(t) + a2*x2(t))');
y1 = a1.*Y(t);
y2 = a2.*Y(t);
subplot(1,2,2);
plot(y1+y2);
title("a1*y1(t) + a2*y2(t)");
figure;
T = 4;
subplot(1,2,1);
YT = conv(X(t - T) , H(t));
plot(YT);
title("Y(t-T)");
subplot(1,2,2);
plot(S(X(t-T)));
title("S(x(t-T))");