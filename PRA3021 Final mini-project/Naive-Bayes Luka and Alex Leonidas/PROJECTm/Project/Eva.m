function zz = logregression (x)

dlmread("wordtext.txt" , ",")


X = c (ones((X.shape(0): 1), X)
y = y(:, newaxis)

theta = zeros((X.shape(1): 1)




    zz = 1 / (1 + exp(-x))
     
   A = dot(x, theta)
   
     function [X, y, theta] = probability(theta, ~)
    
    return sigmoid(input(theta, x))
   
    m = x.shape(0);
    totalcost = -(1 / m) * sum(y * log(probability(theta, x)) + (1 - y) * log(1 - probability(theta, x)));
 
   
    m = x.shape(0);
    grad = (1 / m) * dot(x.T, sigmoid(input(theta,   x)) - y)
   
    function [X, y, theta] = fit(~, x, y, theta)
       
    opt_weights = fmincon;
    func = cost_function;
    x0 = theta;
    fprime = grad; %fprime is a gradient for the function
    args = (x; y.flatten()); %arguments that have to be transferred to the func
     return opt_weights
   
parameters = fit(X, y, theta); %fit is used to find the model parameters that minmizes a cost f
x_values = [min(X(:, 1) - 5), max(X(:, 2) + 5)];
y_values = - (parameters(0) + dot(parameters(1), x_values)) / parameters(2)
plot(x_values, y_values)
hold on
 title=('Decision Boundary');
legend ({Decision Boundary, Admitted, Not Admitted},'Location', 'Southwest')
xlabel('Marks in 1st Exam')
ylabel('Marks in 2nd Exam')