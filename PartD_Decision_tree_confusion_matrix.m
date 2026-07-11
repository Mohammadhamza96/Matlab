clc;
clear;
close all;

%% Read Feature Table

T = readtable('Feature_Table.xlsx');

%% Input Features

X = [T.RMS ...
     T.Energy ...
     T.DomFreq ...
     T.SpecCentroid ...
     T.ZCR];

%% Target Labels

Y = categorical(T.Labels);

%% Split Data

cv = cvpartition(Y,'HoldOut',0.3);

XTrain = X(training(cv),:);
YTrain = Y(training(cv));

XTest = X(test(cv),:);
YTest = Y(test(cv));

%% Train Decision Tree

TreeModel = fitctree(XTrain,YTrain);

%% Predict

YPred = predict(TreeModel,XTest);

%% Accuracy

accuracy = sum(YPred == YTest)/length(YTest)*100;

fprintf('\n');
fprintf('Classification Accuracy = %.2f %%\n',accuracy);

%% Confusion Matrix

figure;
confusionchart(YTest,YPred);
title('Decision Tree Confusion Matrix');

%% View Tree (Optional)

view(TreeModel,'Mode','graph');