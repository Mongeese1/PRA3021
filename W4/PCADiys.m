D=[2.5,0.5,2.2,1.9,3.1,2.3,2.0,1.0,1.5,1.1;
2.4,0.7,2.9,2.2,3.0,2.7,1.6,1.1,1.6,0.9];

##plot(D(1,:),D(2,:),'.m','markersize',20);


##m1 = mean(D(1,:)); %(= 1.81)
##m2 = mean(D(2,:)); 
##
##D(1,:) = D(1,:) - m1;
##D(2,:) = D(2,:) - m2;
##
##
####hold on
##plot(D(1,:),D(2,:),'.k','markersize',20);
##
##C = 1/(length(D(1,:))-1)*D*D'
##[V,U] = eig(C)
##
##W = sort(V,'descend')
##
##D_pca = W*D

####hold on
##
##
##meanhold = zeros(1,2);
##newdata = zeros(size(D));
##  
##  
##  for i = 1:2
##    meanhold(i) = mean(D(i,:));
##    newdata(i,:) = D(i,:) - meanhold(i);
##    
##    
##  endfor
##  
##  meanhold
##  newdata
##plot(newdata,'.k','markersize',20)