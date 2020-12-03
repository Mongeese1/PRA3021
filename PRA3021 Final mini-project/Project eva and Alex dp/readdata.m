
data = dlmread("wordtext.txt" , ",")

features = data(:, 1 : 2)
label = data(:, end)


s = 100;

for i = 1:s
  
     X(i) = ( data(i,1)+  data(i,2) )/2 ;
     
     Y(i) = data (i,3) ;
  
end

scatter(X,Y)
hold on


##
##a = 1;
##b = 2;
##c = 35;

x = linspace(0, 100);

initial_theta = zeros(size(features,2) + 1, 1);

[C_initial,grad] = costFunction(initial_theta,X,Y);

plot (x,C_initial)

%Sigmoid = sigmoid ()               % a ./ (1+exp(-b*(x-c)));
%figure(1), clf
%plot(x, Sigmoid, 'linew', 3)

##plot([0 0], get(gca, 'ylim'), 'k - -')
##xlabel('x'), ylabel('f(x)')


%hold off

