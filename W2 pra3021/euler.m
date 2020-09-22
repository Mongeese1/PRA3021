function [T,Y] = euler(f,t,y)

    t0 = t(1); #Initial time  
    tf = t(2); #Final time
    
    n = numel(y);
     
    % Defining step size
    N = 20;
    h = (tf - t0) / N; 
    
    T = zeros(N+1,1); #Create matrix of zeros to hold values of T based on the number of steps given
    Y = zeros(n,N+1);
    
    ##for first iteration
    Y(:,1) = y; #Declare initial y values
    T(1) = t0; #Declare initial time value 
    
    
    ##for loop to perform euler's method 
    for i = 1 : N
        
        Y_new = Y(:,i) + h .* f(T(i),Y(:,i)); 
        T_new = T(i) + h;
        
        T(i+1) = T_new;
        Y(:,i+1) = Y_new;
       
    end 
end