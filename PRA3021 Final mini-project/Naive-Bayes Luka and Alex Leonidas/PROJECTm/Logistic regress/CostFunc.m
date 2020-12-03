
function retval = CostFunc (features, label, weights)
  observations = length(label);
  pred = predict(features,weights);
  cost1 = -label*log(1-pred);
  cost2 = (1-label) * log(1-pred);
  cost = cost1 - cost2;
  retval = sum(cost) / observations;
  

endfunction
