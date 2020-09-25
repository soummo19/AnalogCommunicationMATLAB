t = -4:0.01:4; %time -4 to 4 with sampling time of 0.01
f = 1;  %frequency of 1Hz

subplot(131)
p1 = step(t) - step(t-1);
plot(t,p1)
title('u (t) – u (t-1)');
axis([-4 4 -2 2])

subplot(132)
p2 = sin(2*pi*f*t) + cos(2*pi*f*t);
plot(t,p2);
title('sin (2πft) + cos (2πft)');
axis([-4 4 -2 2])

subplot(133)
p3 = t.*step(t) - (t-1).*step(t-1) - step(t-2);
plot(t,p3);
title('r (t) – r (t-1) – u (t-2)');
axis([-4 4 -2 2])