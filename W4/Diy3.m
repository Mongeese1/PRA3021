c = [2 -3 7];
x = randn(1,1000);
y  = c(1) * x.^2 + c(2)*x + c(3)+randn(size(x));

A = [(x.^2)' x',ones(size(x'))];
theta = A\y';

[c(:) theta(:)]

y_fit = A*theta;
scatter(x,y,'r')
hold on
plot(x,y_fit,'.k')