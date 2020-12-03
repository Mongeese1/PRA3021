
function [weight, cost_hist] = training (features, label, weight, stepsize, iters)
   cost_hist = [];
   for i = 1:iters
     weight = GradDescent(features, label, weight, stepsize);
     cost = CostFunc(features,label,weight);
     cost_hist(i,:) = cost;
   endfor
   
     
endfunction
