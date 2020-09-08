## For DIY 3
f_1 = @(t)sin(10 * pi * t) .* sin(16 * pi * t); ## First function
f_2 = @(t)sin(10 * pi * t) ./ (2 + sin(4 * pi * t)); ## Second function
f_3 = @(t)mod(t + 1,2) - 1;
f_4 = @(t)floor(mod(t + 1,2));