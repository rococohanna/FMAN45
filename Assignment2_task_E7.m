%% Load data
load('A2_data.mat')

%% Train a non-linear kernel SVM classifier (TASK 6)
beta = 5;
model_nonlin = fitcsvm(train_data_01',train_labels_01,'KernelFunction',...
               'gaussian','KernelScale',beta);
           
class_predict3 = predict(model_nonlin,train_data_01');
error_3_sum = sum(abs(class_predict3-train_labels_01));
error_3_perc = sum(abs(class_predict3-train_labels_01))/length(class_predict3);
wrong_ones_train = sum((class_predict3-train_labels_01)>0);
wrong_zeros_train = sum((train_labels_01-class_predict3)>0);
true_ones_train = sum(train_labels_01);


class_predict4 = predict(model_nonlin,test_data_01');
error_4_sum = sum(abs(class_predict4-test_labels_01));
error_4_perc = sum(abs(class_predict4-test_labels_01))/length(class_predict4);
wrong_ones_test = sum((class_predict4-test_labels_01)>0);
wrong_zeros_test = sum((test_labels_01-class_predict4)>0);
true_ones_test = sum(test_labels_01);

