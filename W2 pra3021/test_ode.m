X0 = [15e6; % Initial x-position
      1e6;  % Initial y-position
      2e3;  % Initial velocity in x-direction
      4e3]; % Initial velocity in y-direction


[Q,W] = euler(@spaceship_motion, [0 15000], X0)

figure
plot(W(:,1),W(:,2))
hold on
plot(0,0,'ro')
xlabel('x-position (m)')
ylabel('y-position (m)')
clear Q
clear W


[Q,W] = Ralston(@spaceship_motion, [0 15000], X0)

figure
plot(W(:,1),W(:,2))
hold on
plot(0,0,'ro')
xlabel('x-position (m)')
ylabel('y-position (m)')
clear Q
clear W

[Q,W] = Runge_kutta(@spaceship_motion, [0 15000], X0)

figure
plot(W(:,1),W(:,2))
hold on
plot(0,0,'ro')
xlabel('x-position (m)')
ylabel('y-position (m)')