%% Loading data
load('A1_data.mat')

%% Plot 1, Reconstruction plot
lambda1 = 0.1;
what1 = skeleton_lasso_ccd(t,X,lambda1);
y1 = X*what1;

plot(n,t,'*', 'Markersize', 8)
hold on
plot(n, y1,'^', 'Markersize', 8)
hold on
plot(ninterp, Xinterp*what1, 'Linewidth', 2)

%% Plot 2, Reconstruction plot
lambda2 = 10;
what2 = skeleton_lasso_ccd(t,X,lambda2);
y2 = X*what2;

figure
plot(n,t,'*', 'Markersize', 8)
hold on
plot(n, y2,'^', 'Markersize', 8)
hold on
plot(ninterp, Xinterp*what2, 'Linewidth', 2)

%% Plot 3, Reconstruction plot
lambda3 = 2;
what3 = skeleton_lasso_ccd(t,X,lambda3);
y3 = X*what3;

figure
plot(n,t,'*', 'Markersize', 8)
hold on
plot(n, y3,'^', 'Markersize', 8)
hold on
plot(ninterp, Xinterp*what3, 'Linewidth', 2)

%% Number of non-zero coordinates
v1 = nnz(what1);
v2 = nnz(what2);
v3 = nnz(what3);

