function p = predict (data_train, theta)
 


% You need to return the following variables correctly
m = size(data_train, 1); % Number of training examples
p = zeros(m, 1);

for i=1:m,
    h = sigmoid(data_train(i,:) * theta);
    if h >= 0.5,
        p(i) = 1;
    else
        p(i) = 0;
    end
end



endfunction
