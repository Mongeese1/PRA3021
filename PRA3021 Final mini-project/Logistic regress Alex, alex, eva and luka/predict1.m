
function retval = predict1 (features, weight)
  z = dot(features,weight)
  retval = sigmoid(z)
endfunction
