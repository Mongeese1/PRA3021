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
## @deftypefn {} {@var{retval} =} costFunc (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@DESKTOP-DPH31L3>
## Created: 2020-10-21

function [J grad h th] = costFunc (theta, x_train, y_train, alpha, iter)
th = theta;
m = size(x_train,1)
for i = i:iter
  h = sigmoid(x_train*th);
  J = -(1/m)*sum(y_train.*log(h) + (1-y_train).*log(1-h));
  th = th + (alpha/length(x_train))*x_train' *(y_train-h);
endfor
grad = zeros(size(theta,1),1);
for i = 1:size(grad)
  grad(i) = (1/m)*sum((h-y_train)'*x_train(:,i));
endfor

endfunction
