x0 = [15e6; % Initial x-position
      0e6;  % Initial y-position
      3.9e3;  % Initial velocity in x-direction
      6e3]; % Initial velocity in y-direction


[t,y] = ode23(@spaceship_motion, [0 15000], x0)
figure
plot(y(:,1),y(:,2))
hold on
plot(0,0,'r')