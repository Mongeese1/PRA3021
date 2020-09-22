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
## @deftypefn {} {@var{retval} =} myKNN (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@CAMPUTER>
## Created: 2020-09-22

function [id] = myKNN (data, train,K)
  N = size(data,1);
  ##Load some necessary octave forge packages
  pkg load statistics
  pkg load nan
  ##Get cluster indicies and combine data and cluster indicises
  C = myKmeans(data,4); 
  newdata = [data,C];
  ##Plotting
  gscatter(newdata(:,1),newdata(:,2),newdata(:,3))##Gscatter is very small, cant change size for some reason
  hold on
  scatter(train(:,1),train(:,2),'k')
  id = zeros(size(train,1),1);##Create array to hold training id
  
  for i = 1:size(train,1)
    dist = square_dist(data,train(i,:)); ##calculate distance between training data and and data
    distance = [dist, C]
    [~,IDSorted] = sort(distance)
    zistances = 1:K;
    for j = 1:length(zistances)
      zistances(j) = C(IDSorted(j)) 
    endfor
    id(i) = mode(zistances); ##Return mode of distances as index
  endfor
  
     
    
    
  
endfunction
