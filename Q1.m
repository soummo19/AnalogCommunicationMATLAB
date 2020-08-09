%{
	Q1. Plot the Following signals in linear scale
	 a) x(t)=sin(3t) -5<t<5
	 b) y(t)=e^(2t+3)

%}
subplot(2,1,1);
x1 = linspace(-5,5);
y1 = sin(3*x1);
plt1 = plot(x1,y1);
title('sin(3x)');
xlabel('x-axis');
ylabel('y-axis');
% plot(x1,y1);
% saveas(figure1,'image.png')

subplot(2,1,2);


x2 = linspace(0,5);
y2 = exp(2*x2 + 3);
plt2 = plot(x2,y2);
title('e^(2x + 3)');
xlabel('x-axis');
ylabel('y-axis');
%saveas(gcf, 'example_signal1.jpg', 'jpg');

% figure1 = figure;
% axes1 = axes('Parent',figure1)
% hold(axes1,'all');
% plot(plot what you want to plot)
% saveas(figure1,'finename.ext')