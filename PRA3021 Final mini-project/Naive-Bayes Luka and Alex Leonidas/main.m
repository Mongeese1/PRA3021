clear;clc;

% path = 'car.xls';
% % Read the data into a cell array
% [~,~,data] = xlsread(path);
% % Converting cell array to a table
% data = cell2table(data);
% % Getting all the data except from the first row
% data = data(2:end,:);

path = 'BreastCancerData.csv';
% Read the data into a matrix
data = dlmread(path,',');
% Getting rid of the first column and last as it is useless
D = data(:,2:end-1);
% The labels of the data to be used for comparison later
L = data(:,end);
pkg load statistics
pkg load nan
pred = Naive_Bayesian(D,L)

[R,cc] = confusionmat(pred(:,1),pred(:,2));
False_pos = R(2,1)
True_pos = R(1,1)
True_neg = R(2,2)
False_neg = R(1,2)
precision = True_pos/(True_pos + False_pos)
recall = True_pos/(True_pos + False_neg)
F1 = 2 .* (1/((1/precision)+(1/recall)))
MSE = 1/length(pred) .* (length(pred) - (True_pos + True_neg)).^2
plotConfMat(R)
