

function retval = GradDescent (features, label,weight, stepsize)
  n = length(features);
  pred = predict1(features,weight);
  grad = dot(features,pred-label);
  grad = grad/n;
  grad = grad.*stepsize;
  retval = weight- grad;
  
  

endfunction
