data = dlmread('marks.txt',',');
pkg load nan
label_tr  = data(:,end);
data_tr = data(:,1:end-1);

n = length(data);

data_tr = [ones(length(data_tr),1) data_tr]
data_test = data_tr;
label_test = label_tr;

iter = 1000;
theta = zeros(size(data_tr,2),1); ##init weights
alpha = 0.1 ##learn rate
[J grad h th] = costFunc(theta, data_tr,label_tr,alpha,iter) 
ypred = data_test*th;
[hp] = sigmoid(ypred);
ypred(hp>=0.5) = 1;
ypred(hp<=0.5)=0;
length(hp)
##length(hp)


  


pkg load symbolic
syms x1 x2
fnn =th(1) + th(2)*x1 +th(3) *x2 -0.5;

figure
hold on
scatter(data_test(label_test==1,2),data_test(label_test==1,3), '+b', 'linewidth', 5)
scatter(data_test(label_test==0,2),data_test(label_test==0,3), 'r', 'linewidth', 5)
h1 = fplot(fnn)
set(h1,'color','k')
legend('pos class', 'neg. class', 'decision bound')
xlim([-2 2])
ylim([-2 2])