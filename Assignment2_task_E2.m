%% Load data
load ('A2_data.mat')
Task_E1
close all

%% Clustering data using K-means
K=2;                                                        %K=2 and K=5
[y,C] = K_means_clustering(train_data_01,K);

class1 = Pi(:,logical(y==1));
class2 = Pi(:,logical(y==2));
class3 = Pi(:,logical(y==3));
class4 = Pi(:,logical(y==4));
class5 = Pi(:,logical(y==5));

%% Plot
figure
plot(class1(1,:), class1(2,:),'*')
hold on
plot(class2(1,:), class2(2,:),'*')
hold on
plot(class3(1,:), class3(2,:),'*')
hold on
plot(class4(1,:), class4(2,:),'*')
hold on
plot(class5(1,:), class5(2,:),'*')

%% TASK E3
C_reshape = cell(1,K);
for c=1:K
    C_reshape{c} = reshape(C(:,c), [28,28]);
end
figure
subplot(1,K,1)
imshow(C_reshape{1})
subplot(1,K,2)
imshow(C_reshape{2})
subplot(1,K,3)
imshow(C_reshape{3})
subplot(1,K,4)
imshow(C_reshape{4})
subplot(1,K,5)
imshow(C_reshape{5})

