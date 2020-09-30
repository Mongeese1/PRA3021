filename = 'MiceProteinExpressionDataset.csv';
data = csvread(filename,5,0);
[M,N] = size(data);

pkg load nan


[res,V,D] = myPCA(data)

plot(res,'.c','markersize',15)