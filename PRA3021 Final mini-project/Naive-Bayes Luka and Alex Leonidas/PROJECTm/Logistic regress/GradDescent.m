

function retval = GradDescent (features, label,weight, stepsize)
  n = length(features);
  pred = predict(features,weights);
  grad = dot(features',pred-label);
  grad = grad/n;
  grad = grad*lr;
  retval = weights- grad;
  
  

endfunction
