function [sm] = spaceship_motion(t,init)

    % Values for DIY 4
    % position = [15e6;0e6]
    % velocity = [2e3;4e3]
    % velocity_2 = [3.9e3;6e3]

    xs = init(1:2); #Initial position 
    vs = init(3:4); #Initial velocity
    as = spaceship_acceleration(moon_position(t),xs); #Accelartion at a given moon_position for the initial position  
    sm = [vs;as];#Return matrix of velocity and acceleration

end