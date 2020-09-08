%% Loading data
load('task6.mat')

%% Denoising the audio
Yclean = lasso_denoise(Ttrain,Xaudio,-1);
save('denoised_audio','Yclean','fs');

%% Playing the denoised audio
soundsc(Yclean,fs)