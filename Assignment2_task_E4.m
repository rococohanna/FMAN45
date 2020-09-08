%% Load data
load('A2_data.mat')

%% Training data
K=2;
[A1,T1,y_train,~] = K_means_classifier(train_data_01,train_labels_01,K);
error_train_sum = sum(abs(T1-train_labels_01));
error_train_perc = sum(abs(T1-train_labels_01))/length(T1);

wrong_ones_train = sum((T1-train_labels_01)>0);
wrong_zeros_train = sum((train_labels_01-T1)>0);
true_ones_train = sum(train_labels_01);

%% Test data
[A2,T2,y_test,~] = K_means_classifier(test_data_01,test_labels_01,K);
error_test_sum = sum(abs(T2-test_labels_01));
error_test_perc = sum(abs(T2-test_labels_01))/length(T2);

wrong_ones_test = sum((T2-test_labels_01) > 0);
wrong_zeros_test = sum((test_labels_01 - T2) > 0);
true_ones_test = sum(test_labels_01);