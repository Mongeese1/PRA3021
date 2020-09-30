c = [3 7];
x = randn(1,1000);
y = c(1) * x+c(2) +randn(size(x));

##scatter(x,y)

A = [x(:),ones(numel(x),1)];

theta = A\y(:);

[c(:),theta]

y_fit = A*theta;

scatter(x,y,'r')
hold on
plot(x,y_fit,'k')