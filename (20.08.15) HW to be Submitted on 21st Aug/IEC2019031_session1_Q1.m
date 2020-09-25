t = -2:0.01:2; %time -2 to 2 with sampling time of 0.01
f = 1;  %frequency of 1Hz

subplot(241); %figure1

p1 = step(t);
plot(t,p1);
title('u (t)');
axis([-2 2 -2 2])

subplot(242); %figure2

p2 = t.*step(t);
plot(t,p2);
title('r (t)');
axis([-2 2 -2 2])

subplot(243); %figure3

p3 = sin(2*pi*f*t);
plot(t,p3);
title('sin (2πft)');
axis([-2 2 -2 2])

subplot(244); %figure4

p4 = cos(2*pi*f*t);
plot(t,p4);
title('cos (2πft)');
axis([-2 2 -2 2])

subplot(245); %figure5

p5 = p3.*p1;
plot(t,p5);
title('sin (2πft) . u(t))');
axis([-2 2 -2 2])

subplot(246); %figure6

p6 =step(t+1);
plot(t,p6);
title('u (t+1)');
axis([-2 2 -2 2])

subplot(247); %figure7

p6 = step(t-1);
plot(t,p6);
title('u (t-1)');
axis([-2 2 -2 2])

subplot(248); %figure8

p8 = p3.*step(-t);
plot(t,p8);
title('sin (2πft) . u(-t)');
axis([-2 2 -2 2])

