function out = Naive_Bayesian(D,L)
%Naive_bayesian Summary of this function goes here
%   Detailed explanation goes here

    % Get the sizd of the data
    [n,m] = size(D);
     

    % Split the data into train and test data using 80 - 20 split
    z = ceil(n*0.8);
    train = D(1:z,:);
    L_train = L(1:z,:);  
    test = D(z+1:end,:);
    L_test = L(z+1:end,:);
    
    class = unique(L_train);
    num_class = length(class);
    
    Classes = D(:,m);
    
    for i = 1:num_class
        % Calculating the class probablilities
        class_prob(i) = sum((L_train==class(i)))/length(L_train);
       
    end
    for i = 1:num_class
      xi = train(find(L_train==class(i)),:);
      mu(i,:) = mean(xi,1);
      sigma(i,:) = std(xi,1);
    endfor
    length(train)
    length(xi)
    
    for i = 1:length(test)
        t1 = normcdf(ones(num_class,1).*test(i,:)+0.5,mu,sigma);
        t2 = normcdf(ones(num_class,1).*test(i,:)-0.5,mu,sigma);
        t_diff = abs(t1-t2);
        P(i,:) = class_prob.*prod(t_diff,2)';
        %P(i,1) = (P(i,1)/(P(i,1) + P(i,2))); 
        %P(i,2) = (P(i,2)/(P(i,1) + P(i,2)));
    end

    
    %(P(1,1)/(P(1,1) + (P(1,2)))) + 

    %P
    [~,id] = max(P,[],2);
    %zz;
    %id
    for i = 1:length(id)
        pv(i,1) = class(id(i));
    end
    out = [pv,L_test]; 
end

