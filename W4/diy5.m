c = [-2 3 7 1];
x = randn(1,1000)/1.5;
y = polyval(c,x)+randn(size(x));

A = [(x.^3)' (x.^2)' x',ones(size(x'))];
theta = A\y';
[c(:) theta(:)]
y_fit = A * theta;
scatter(x,y,'r')
hold on
plot(x,y_fit,'.k')