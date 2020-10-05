## Copyright (C) 2020 lbowe
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} Brusselator1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@CAMPUTER>
## Created: 2020-10-05

function [U,V] = Brusselator1 (ku,kv,kappa,s_size,xmax,ymax,tmax)



      

    c = [4.5,13.0;4.5,9];

    f = @(u,v)c(1,1) + u.^2 .* v - c(1,2) .* u - u;
    g = @(u,v)c(1,2) .* u - u.^2 .* v;



    mx = xmax/kappa;
    my = ymax/kappa;
    n = ceil(tmax/s_size);

    U = NaN(mx,my,n+1);
    V = U;

    for i = 1:mx
      for j = 1:my
        U(i,j,1) = f(i*kappa,j*kappa);
        V(i,j,1) = g(i*kappa, j*kappa);
      endfor
    endfor

    for ii = 1:n
      Uii = U(:,:,ii);
      Vii = V(:,:,ii);
      U(:,:,ii+1) = Uii+s_size*(ku*Laplacian(Uii,kappa)+f(Uii,Vii));
      V(:,:,ii+1) = Vii+s_size*(kv*Laplacian(Vii,kappa)+g(Uii,Vii));
    endfor
endfunction
