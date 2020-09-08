
f = @(t)sin(2*pi*2*t)./(3 + sin(2*pi*t));
T = 2; %total sample time
v_one = 8; % first sampling frequency 
v_two = 50; % second sampling frequency
N_one = T*v_one; % number of samples for first frequency
N_two = T*v_two;
t_one = (0:N_one - 1)/N_one * T; %sample times
t_two = (0:N_two - 1)/N_two * T;

figure(1)
fplot(f,[0,T]); hold on; plot(t_one,f(t_one),'x');
figure(2)
fplot(f,[0,T]); hold on; plot(t_two,f(t_two),'x');