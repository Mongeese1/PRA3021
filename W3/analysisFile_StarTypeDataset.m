function analysisFile_StarTypeDataset()

##    clc;clear;close;

    % read the data for the StarTypeDataset.csv file
    filename = 'StarTypeDataset.csv';
    data = csvread(filename,1,0);

    K = 6; % Number of classes
##    boundary_sample(data,K)

    %% run is the function for the first task
##   [I,C] = myKmeans(data,K)


    %% run your myKNN function for classifying a set of testing points
    test_data = [0.75 -0.1;-0.9 -0.1;0.6 0.08;-1.25 -0.2];
    ind = myKNN(data,test_data,K)
    
end