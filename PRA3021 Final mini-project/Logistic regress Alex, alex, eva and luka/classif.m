
function retval = classif (predictions,prob)
  decision_bound = vectorize(decisionbound(prob);
  decision_bound = decisionbound(pred);
  retval = decision_bound(:);
endfunction
