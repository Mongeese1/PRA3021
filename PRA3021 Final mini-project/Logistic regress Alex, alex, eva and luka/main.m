data = dlmread("marks.txt",',');
f = data(:,1:2);
l = data(:,end);
tr_f = f(1:70,:);
tr_l = l(1:70,:);
tst_f = f(71:100,:);
tst_l = f(71:100,:);

normtr = tr_f - min(tr_f(:));
normtr = normtr ./ max(normtr(:));

weights = zeros(size(tr_f));
##c = CostFunc(tr_f,tr_l,weights)
[w,c] = training(normtr,tr_l,weights,0.01,15);
##predict1(tr_f,weights); 
w
c