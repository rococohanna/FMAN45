%% Load data
load('A2_data.mat')

%% Train a linear SVM classifier

model = fitcsvm(train_data_01',train_labels_01);
class_predict1 = predict(model,train_data_01');
error_1 = sum(abs(class_predict1-train_labels_01))/length(class_predict1);

class_predict2 = predict(model,test_data_01');
error_2 = sum(abs(class_predict2-test_labels_01))/length(class_predict2);

