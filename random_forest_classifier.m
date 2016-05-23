function [ B ] = random_forest_classifier(N, X, Y)
%{
creates an ensemble 'B' of 'N' decision trees for predicting response Y 
as a function of predictors in the numeric matrix of training data, X. 
Each row in X represents an observation and each column represents a 
feature.

MATHWORKS
()
%}
B = TreeBagger(N,X,Y,'OOBPrediction','On','Method','classification')


end

