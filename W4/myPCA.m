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
## @deftypefn {} {@var{retval} =} myPCA (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lbowe <lbowe@CAMPUTER>
## Created: 2020-09-29

function [res, V, D] = myPCA (data)
  [M,N] = size(data);
  
  meanhold = zeros(1,N);##variable to hold mean for each column
  newdata = zeros(M,N);##variable to hold new data
  
  
  for i = 1:N
    meanhold(i) = mean(data(i,:));##Fill meanhold with means
    newdata(i,:) = data(i,:) - meanhold(i);##Subtract means from data column and add it to newdata matrix
    
  endfor
##  newdata
  covariance_data = corrcoef(newdata,'mode','Pearson','rows', 'pairwise'); #Had to use this since octaves built in cov function can't deal with nans in dataset.
  
##    covariance_data = cov(newdata);
    
##  corrdata = corr(newdata);
##  corrdata
##  fprintf('%d',issymmetric(covariance_data))
  [V,D] = eig(covariance_data);##Get eigenvalues of covariance data
  
##  eigsort = zeros(N,2);
##  eigsort(:,2) = diag(D)
  eigsort = sort(V,'descend');
##  eigsort(:,1) = 1:N
  
  
  
  eigdiag = diag(D);
##  eigdiag
  n = length(eigdiag);
  normeig = zeros(1,n)';
  zum = sum(eigdiag);

  
  for i = 1:n
    normeig(i) = eigdiag(i)/zum;
##    normeig(i)
   endfor
  normeig = sort(normeig,'descend');
##  normeig
##  
  ca = cumsum(normeig);#Sum eigenvalues till significance level is reached
  k = find(ca <=0.95,1,'last');##Exact 0.95 significance cannot be found, so use closest value
  k
  eigsum = ca(k)
##  sortv = sort(V,'descend')
  
  res = data*eigsort(:,1:k);##Return dimension reduced data

  
  

endfunction
