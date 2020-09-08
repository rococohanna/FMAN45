%% Loading data
load('A1_data.mat')

%% K-fold cross-validation scheme
K = 10;
lambda_min = 0.01;
lambda_max = max(abs(X'*t));
N_lambda = 100;
lambdavec = exp(linspace(log(lambda_min), log(lambda_max), N_lambda));

[wopt,lambdaopt,RMSEval,RMSEest] = skeleton_lasso_cv(t,X,lambdavec,K);

%% PLOT 1, RMSE

plot(lambdavec, RMSEval, '*-', 'Markersize', 8)
hold on
plot(lambdavec, RMSEest, '^-', 'Markersize', 8)
hold on
plot([lambdaopt lambdaopt], [0 5], '--', 'Linewidth', 2)

%% PLOT 2, Reconstruction plot
y = X*wopt;

figure
plot(n,t,'*', 'Markersize', 8)
hold on
plot(n, y,'^', 'Markersize', 8)
hold on
plot(ninterp, Xinterp*wopt, 'Linewidth', 2)