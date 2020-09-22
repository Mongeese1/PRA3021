function a = spaceship_acceleration(xm,xs)

   
    G = 6.673 * 10^(-11); ## Gravitational Contsant  in N*(m^2)*kg^(-2)
    
    
    Me = 5.97 * 10^24;#mass earth kg
    Mm = 7.35 * 10^22;#mass moon kg
    
    a = -G * ((Me/(norm(xs)^3) .* xs) + (Mm/(norm(xs-xm)^3) .* (xs-xm)));

end