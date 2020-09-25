t = -6:0.01:6; %time -6 to 6 with sampling time of 0.01
f = 1;  %frequency of 1Hz

subplot(131)
p1 = step(t) - (t-3).*step(t-3) + (t-4).*step(t-4) ;
plot(t,p1)
title('X(t)');
axis([-6 6 -2 2])

subplot(132)
p2 = t.*step(t) - (t-2).*step(t-2) - 2.*step(t-4);
plot(t,p2);
title('Y(t)');
axis([-6 6 -3 3])

subplot(133)
p3 = p1 + 2.*p2;
plot(t,p3);
title('Z(t)');
axis([-6 6 -6 6])