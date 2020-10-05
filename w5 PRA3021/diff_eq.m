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
## @deftypefn {} {@var{retval} =} diff_eq (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@CAMPUTER>
## Created: 2020-10-05

function U = diff_eq(F,k,xmax,ymax,tmax,kappa,s_size)
  
  if (s_size<k.^2)##check if step size is valid
    mx = xmax/k;
    my = ymax/k;##Find max index for laplacian
    n = ceil(tmax/s_size);##round this to the biggest nearest integer value
   ##since it may not always be an integer, required to make for loops work
    
    U = NaN(mx,my,n+1);
    for i = 1:mx
     for j = 1:my
        y = j*k;
        x = i*k;
        U(i,j,1) = F(x,y);##Set initial conditions
        endfor
     endfor
    
    for ii = 1:n
      U(:,:,ii+1) = U(:,:,ii) + (s_size*kappa*Laplacian(U(:,:,ii),k));
    end
    
  else
    disp('h must be less than K');
  endif
  
    
      
    

endfunction
