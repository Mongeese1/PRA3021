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
## @deftypefn {} {@var{retval} =} DFT_F (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@CAMPUTER>
## Created: 2020-09-08

function [a,b] = DFT_F(x,T)
%function that computes the discrete fourier transform
    
   
    N = numel(x);
    %Preallocation of the variables 'a' and 'b' will run the code faster because
    %there there is no need to repeatedly reallocate memory for the growing data structure
    a = zeros(1:N);  
    b = zeros(1:N); 
    
    for k = 0:N
        s_a = 0;
        s_b = 0;
        for n=0:(N-1)
            s_a = s_a + x(n+1) * cos(2 * pi * k * n / N);
            s_b = s_b + x(n+1) * sin(2 * pi * k * n/N);
        end
    a(k+1) = s_a * 2/N;
    b(k+1)= s_b * 2/N;
    end
    
    %---- DIY 2 ----%
    %generates plot of the magnitude spectrum of x and shows
    % its frequency contents
    T = pi;
    v_s = N/T;
    A = sqrt(a.^2+b.^2);
    K = length(A);
    v = (0:K-1)/N * v_s;
    plot(v,A)
    xlabel('frequency'), ylabel('amplitude')
    %---- End DIY 2 ----%
end
