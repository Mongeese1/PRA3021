MotorRegression
pkg load image
fprintf('R-squared for linear model of id,k vs id,k+1 is %f\n' , (corr(Y1,y1_fit)).^2)
fprintf('RMSE for linear model of id,k vs id,k+1 is %f\n', sqrt(immse(Y1,y1_fit)))
fprintf('R-squared for quadratic model of id,k vs id,k+1 is %f\n' , (corr(Y1,y12_fit)).^2)
fprintf('RMSE for quadratic model of id,k vs id,k+1 is %f\n', sqrt(immse(Y1,y12_fit)))

fprintf('R-squared for linear model of id,q vs id,q+1 is %f\n' , (corr(Y2,y2_fit)).^2)
fprintf('RMSE for linear model of id,q vs id,q+1 is %f\n', sqrt(immse(Y2,y2_fit)))
fprintf('R-squared for quadratic model of id,q vs id,q+1 is %f\n' , (corr(Y2,y22_fit)).^2)
fprintf('RMSE for quadratic model of id,q vs id,q+1 is %f\n', sqrt(immse(Y2,y22_fit)))


figure(1)
plot(X1,Y1,'.k')
hold on
plot(X1,y1_fit,'.c')
legend('Original data' , 'linear model')
title('Linear model for id,k vs id,k+1')

figure(2)
plot(X1,Y1,'.k')
hold on
plot(X1,y12_fit,'.c')
legend('Original data' , 'quadratic model')
title('quadratic model for id,k vs id,k+1')



figure(3)
plot(X2,Y2,'.k')
hold on
plot(X2,y2_fit,'.c')
legend('Original data' , 'linear model')
title('linear model for id,q vs id,q+1')

figure(4)
plot(X2,Y2,'.k')
hold on
plot(X2,y22_fit,'.c')
legend('Original data' , 'quadratic model')
title('quadratic model for id,q vs id,q+1')

clear