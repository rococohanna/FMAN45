%% Loading data
load('A1_data.mat')
%% Playing the audio with noise
soundsc(Ttrain,fs)

%% K-fold cross-validation scheme
K = 10;          %10
lambda_min = 0.0001;
lambda_max = 0.05;
N_lambda = 100;  %100
lambdavec = exp(linspace(log(lambda_min), log(lambda_max), N_lambda));

%[wopt,lambdaopt,RMSEval,RMSEest] = skeleton_multiframe_lasso_cv(Ttrain,Xaudio,lambdavec,K);

%save('Task_6_variables', 'wopt','lambdaopt','RMSEval','RMSEest')
%% PLOT 1, RMSE
load('task6.mat')

plot(lambdavec, RMSEval, '*-', 'Markersize', 8)
hold on
plot(lambdavec, RMSEest, '^-', 'Markersize', 8)
hold on
plot([lambdaopt lambdaopt], [0 0.14], '--', 'Linewidth', 2)

%% PLOT 2, Reconstruction plot
% Dimension errors when plotting, fix
y = Xaudio*Wopt;

figure
plot(n,Ttrain,'*', 'Markersize', 8)
hold on
plot(n, y,'^', 'Markersize', 8)
hold on
plot(n, Xinterp*Wopt, 'Linewidth', 2)