function [ B,Yfit ] = random_forest_classifier(N, X_train, Y_train,X_test,Y_test)
%{
creates an ensemble 'B' of 'N' decision trees for predicting response Y 
as a function of predictors in the numeric matrix of training data, X. 
Each row in X represents an observation and each column represents a 
feature.

MATHWORKS
()
%}
B = TreeBagger(N,X_train,Y_train,'OOBPrediction','On','Method','classification');


Yfit = predict(B,X_test);

end

