xmax = 4;
ymax = 4;

k = 0.2;
h = 0.001;
xc = 1;
yc = 1;
T = 1;


u_i=@(x,y)sin(2*pi*(a*x + b*y));
v_i = zeros(xmax/k,ymax/k);## Couldn't get derivitave of ui since octave won't load symbolic package
##Apparantley i'm missing a python dependendancy but i can't fix it

[U,V] = wave_eq(u_i,v_i,xmax,ymax,T,h,k);
create_movie(U,xmax,ymax,T);

