## Copyright (C) 2020 r-are
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
## @deftypefn {} {@var{retval} =} myKmeans (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: r-are <r-are@rare-MACH-WX9>
## Created: 2020-09-22

function [I, centres] = myKmeans(data,k)
  U =  size(data,1)
  randcentre = randperm(U,k); ##Create random ints 
  centres = [];
  for n = 1:k
    centres = [centres; data(randcentre(n),:)];##asign each centre to a rand int
  endfor
  iter = 100;#Max iterations
  D = zeros(U, size(centres(:,1)));##Dist of each point to its each centre
  I = zeros(U,1);##Centre of each point
  fprintf('iter [0]')
  centres
  
  for ii = 1:iter
    for i = 1:k
      D(:, i) = square_dist(data,centres(i,:));
    endfor
    [~, I] = min(D, [],2)##Get centre for each index
    centreshold = zeros(k,3); ##Create value to hold centre values
    for ij = 1:U
      ##To get the new centres the average must be taken
      centreshold(I(ij),1:2) = centreshold(I(ij),1:2) + data(ij,1:2);
      centreshold(I(ij),3) = centreshold(I(ij),3) + 1;
    endfor
    centres = centreshold(:, 1:2) ./ centreshold(:,3);
    fprintf('iter [%d]',ii)
    centres
    if ii!=1##Condition so that this doesn't run on first iteration
      if centres(ii) = centres(ii-1) ;
        break##When centres are the same in repeat iterations break the loop
      endif
    endif
  endfor
  scatter(data(:,1),data(:,2),10,'m')
  hold on
  scatter(centres(:,1),centres(:,2),10,'k')
  hold off
endfunction

