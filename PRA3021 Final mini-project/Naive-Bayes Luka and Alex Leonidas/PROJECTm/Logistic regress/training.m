
function [weights, cost_hist] = training (features, label, weights, stepsize, iters)
   cost_hist = [];
   for i = 1:iters
     weights = GradDescent(features, label, weights, stepsize);
     cost = CostFunc(features,label,weights);
     cost_hist(i) = cost;
     
     
endfunction
