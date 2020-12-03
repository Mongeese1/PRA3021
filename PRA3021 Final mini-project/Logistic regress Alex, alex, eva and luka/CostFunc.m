
function retval = CostFunc (features, label, weight)
  observations = length(label);
  pred = predict1(features,weight);
  cost1 = -label.*log(pred);
  cost2 = (1-label) .* log(1-pred);
  cost = cost1 - cost2;
  retval = sum(cost) / observations;
  

endfunction
