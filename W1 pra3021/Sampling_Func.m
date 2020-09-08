function h = Sampling_Func(v,T,m)
    

    g = m;
    N = T * v; ## Calculates the number of samples at a specific frequency
    t = (0:N - 1)/N * T; ## Calculates the sample times
    

        
   data = [];##Create empty data obj
      for i = 1:N
        data(i) = g(t(i));## Fill data array w/ output from input func
      endfor
      
 
   [a,b] = Dft_Func(data,T);
        
        ## Plotting the sampled data
    h = fplot(g,[0,T]); hold on; plot(t,g(t),'x');
    xlabel('time'), ylabel('f(t)');

end 





