%% Load data
load('A2_data.mat')

%% SVD
train_data_norm = normalize(train_data_01, 'center');
[U,S,V] = svd(train_data_norm);
%%
eigen_max1 = U(:,1);
eigen_max2 = U(:,2);
W = [eigen_max1 eigen_max2];
Pi = W'*train_data_norm;

class1 = Pi(:,logical(train_labels_01));
class2 = Pi(:,~logical(train_labels_01));

%% Plot
figure
plot(class1(1,:), class1(2,:),'*')
hold on
plot(class2(1,:), class2(2,:),'^')