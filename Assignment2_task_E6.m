%% Load data
load('A2_data.mat')

%% Train a linear SVM classifier

model = fitcsvm(train_data_01',train_labels_01);
class_predict1 = predict(model,train_data_01');

error_1_sum = sum(abs(class_predict1-train_labels_01));
error_1_perc = sum(abs(class_predict1-train_labels_01))/length(class_predict1);
wrong_ones_train = sum((class_predict1-train_labels_01)>0);
wrong_zeros_train = sum((train_labels_01-class_predict1)>0);
true_ones_train = sum(train_labels_01);



class_predict2 = predict(model,test_data_01');

error_2_sum = sum(abs(class_predict2-test_labels_01));
error_2_perc = sum(abs(class_predict2-test_labels_01))/length(class_predict2);
wrong_ones_test = sum((class_predict2-test_labels_01)>0);
wrong_zeros_test = sum((test_labels_01-class_predict2)>0);
true_ones_test = sum(test_labels_01);
