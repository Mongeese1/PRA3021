filename = 'DatasetElectricMotor.csv';
data = csvread(filename,1,0);
##This was the data with the highest correlation
##Verified by the corr function and looking at the plotted graphs


for i =1:size(data,2)-2
  fprintf('The correlation of data(:,%d) vs data(:,6) is %f\n',i , corr(data(:,i),data(:,6)))
  fprintf('The correlation of data(:,%d) vs data(:,7) is %f\n',i , corr(data(:,i),data(:,7)))
endfor


X1=data(:,1);Y1=data(:,6); 
X2=data(:,2);Y2=data(:,7); 
##X3=data(:,3);Y=data(:,7); scatter(X3,Y)

##X4=data(:,4);Y=data(:,7); scatter(X4,Y)
##X5=data(:,5);Y=data(:,7); scatter(X5,Y)



##1 is id,k 2 is id,q
##an extra 2 after a variable indicates quadratic regression
A1 = [X1(:) ones(numel(X1),1)];
theta1 = A1\Y1(:);

y1_fit = A1 * theta1;

A12 = [(X1.^2) X1 ones(size(X1))];
theta12 = A12\Y1;

y12_fit = A12 * theta12;


A2 = [X2(:) ones(numel(X2),1)];
theta2 = A2\Y2(:);

y2_fit = A2 * theta2;


A22 = [(X2.^2) X2 ones(size(X2))];
theta22 = A22\Y2;

y22_fit = A22 * theta22;

