function prob = logistic_regret (data, label)
  
   [n,m] = size(data);
   
   z = ceil(0.8*n)
   data_train = data(1:z,:)
label_train = label(1:z,:)
data_test = data ( z+1 : end,:)
label_test = label ( z+1 : end,:)


  newdata = sigmoid(data_train);


% Add intercept term to x 
data_train = [ones(size(data_train, 1), 1) data_train];

% Initialize fitting parameters
initial_theta = zeros(size(data_train,2) + 1, 1);

% Compute and display initial cost and gradient
[cost, grad] = costFunction(initial_theta, data_train, label_train);

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);

fprintf('\nProgram paused. Press enter to continue.\n');
pause;


%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost 
[theta, cost] = fminunc(@(t)(costFunction(t, data_train, label_train)), initial_theta, options);


% Print theta to screen
fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);



% Compute accuracy on our training set
p = predict(data_train, theta);


prob = sigmoid ( data_test .* theta )
  

endfunction
