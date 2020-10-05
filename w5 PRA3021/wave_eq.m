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
## @deftypefn {} {@var{retval} =} wave_eq (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@CAMPUTER>
## Created: 2020-10-05

function [U,V] = wave_eq(F,v_init,xmax,ymax,tmax,s_size,k)
    
  if (s_size<k.^2)##check if step size is valid
      mx = xmax/k;
      my = ymax/k;
      n = ceil(tmax/s_size);
      
      U = NaN(mx,my,n+1);
      V = U;
      
      ##c = 3E8
      
      c = 1;
      
      for i = 1:mx
        for j = 1:my
          x = i*k;
          y = j*k;
          U (i,j,1) = F(x,y);
        endfor
      endfor
      V(:,:,1) = v_init;
      
      for ii = 1:n
         U(:,:,ii+1) = U(:,:,ii) + s_size * V(:,:,ii);
         V(:,:,ii+1) = V(:,:,ii) + s_size * c^2 * Laplacian(U(:,:,ii),k);
       endfor
    else
       disp('h must be less than K');
     endif
     
       
    

endfunction
