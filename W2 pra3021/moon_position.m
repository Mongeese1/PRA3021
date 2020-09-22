function mp = moon_position(t)

    #Distance of the Earth to the moon in meters
    d_em = 400.5 * 10^6; 
    
    #  Period of moon orbit
    T = 27.321582 * 24 * 3600;
    
    theta_0 = -61 / 180 * pi;
    
   
    dtheta = 2 * pi * t / T; # Change in theta
    mp = [d_em*cos(dtheta + theta_0);d_em*sin(dtheta + theta_0)]; #Calculate moon position based on how much time has passed
   
end