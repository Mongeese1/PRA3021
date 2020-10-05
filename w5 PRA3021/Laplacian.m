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
## @deftypefn {} {@var{retval} =} Laplacian (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@CAMPUTER>
## Created: 2020-10-05

function LU = Laplacian(U,k)
  
  [mx,my] = size(U);##find x and y max
    boundary_x = @(i)mod(i-1,mx)+1;##Boundary conditions
    boundary_y = @(i)mod(i-1,my)+1;
   
   LU = NaN(mx,my);##Create empty array to assign values
   for ix = 1:mx##Do the calculation
     for iy = 1:my
          U1 = U(boundary_x(ix+1),iy);
          U2 = U(boundary_x(ix-1),iy);
          U3 = U(ix,boundary_y(iy+1));
          U4 = U(ix,boundary_y(iy-1)); 
          LU(ix,iy) = (1/k.^2)*(U1+U2+U3+U4-4*U(ix,iy)); 
        endfor
      endfor
      
  
  
endfunction
