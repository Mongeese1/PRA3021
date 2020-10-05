kappa=1; 
k = 0.125; 
h = (k.^2)/8;
xmax = 2; 
ymax = 1; 
T = 1;

F=@(x,y)cos(pi*x).*y.*(1-y);

U_diff = diff_eq(F,k,xmax,ymax,T,kappa,h);
create_movie(U_diff,xmax,ymax,T);
