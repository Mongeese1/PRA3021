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
## @deftypefn {} {@var{retval} =} Runge_kutta (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@CAMPUTER>
## Created: 2020-09-14

function [ts,ys] = Runge_kutta (f,t,y)
  ##Functionally the same as euler's method, declare steps, calculate step size, create matrix, perform the algorithm over the given steps
  
  n = numel(y);
  t0 = t(1);
  tf = t(2);
  
  N = 20;
  
  h = (tf-t0)/N;
  ts = NaN(N+1,1);
  ys = NaN(n, N+1);
  
  ys(:,1) = y;
  ts(1) = t0;
  
##  k_1s = NaN(n,N+1);
##  k_2s = NaN(n,N+1);
  
  

  for i = 1:N
    t_n = ts(i) + h;
    ts(i+1) = t_n;

    
    k_1 = h .*f(ts(i),ys(:,i));
    k_2 = h.*f((ts(i)+h/2),(ys(:,i)+2 .*k_1./2));
    k_3 = h.*f((ts(i)+h/2),(ys(:,i)+2 .*k_2./2));
    k_4 = h.*f((ts(i)+h),(ys(:,i)+2 .*k_3));
    
    y_n = ys(:,i) + (1/6).*((k_1+2*k_2+2.*k_3 + k_4));
    ys(:,i+1) = y_n;
    endfor
  

endfunction
