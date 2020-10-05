xmax = 4;
ymax = 4;

k = 0.5;
h = 0.01;
xc = 1;
yc = 1;
T = 1;


u_i=@(x,y)exp(-((x-xc)^2+(y-yc)^2));
v_i = zeros(xmax/k,ymax/k);

[U,V] = wave_eq(u_i,v_i,xmax,ymax,T,h,k);
create_movie(U,xmax,ymax,T);

