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
## @deftypefn {} {@var{retval} =} ctfft3 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@CAMPUTER>
## Created: 2020-09-08

function retval = ctfft3 (x)
  n = length(x)
  
  if log2(length(x)) ~= [0:200000] #Check whether len(x) is power of 2 
    err = 'Array must be length 2^n'
    error(err)#toss error message if it is not
  endif
  
  if n ==1
    retval = x
  else
    x_even = ctfft3(x(1:2:n));#Check whether even or odd based on index
    ##starting on 1, moving by 2 means index will always be even from this point
    x_odd = ctfft3(x(2:2:n));
 
   
     
      
     M = n/2
      ##Discrete fourier transform math, had to look this up from wikipedia
     W = exp(-2i*pi*(0:M-1)/n); 
      
     even = x_even(1:M) + W.*x_odd(1:M);
     odd = x_even(1:M) - W.*x_odd(1:M);
      
     retval = [even,odd];
   endif
    
  

  
  
  
endfunction
