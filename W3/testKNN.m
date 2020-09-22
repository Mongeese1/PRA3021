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
## @deftypefn {} {@var{retval} =} KNN (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@CAMPUTER>
## Created: 2020-09-21

function retval = KNN (test_data,train_data,K)
  
  numTestData = size(test_data,1);
  numTrainData = size(train_data,1);
  
  for i = 1:numTestData
    R = repmat(test_data(i,:),numTrainData,1);
    eucdist = ((R(:,1) - train_data(:,1))).^2;
    
    [~, pos] = sort(eucdist);
    kNN = pos(1:K);
##    kND = dist(1:K);
   
   
    A = train_data(kNN,2)
    
    M = mode(A)
    
    retval = train_data(kNN(1),2)
  endfor
  
    
    

endfunction
