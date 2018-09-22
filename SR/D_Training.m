clear all; clc; close all;
% addpath(genpath('RegularizedSC'));
% TR_IMG_PATH = 'Data/Training';
tic;
dataname = 'f3_p';
dataRoad = ['Data/Training/' dataname];
dict_size   = 256;          % dictionary size
lambda      = 0.05;         % sparsity regularization
patch_size  = 9;            % image patch size
nSmp        = 10000;       % number of patches to sample
upscale     = 2;            % upscaling factor 
iter        = 5;
% 
[Xh, Xl] = rnd_smp_patch(dataRoad, patch_size, nSmp, upscale);
save('X_diff_double9.mat', 'Xh', 'Xl')
%load X2wno_diff_double5.mat
%% prune patches with small variances, threshould chosen based on the training data
%  [Xh, Xl] = patch_pruning(Xh, Xl, 10);%要求Xh每列方差大于10,去除平滑样本? 
%% joint sparse coding 
[Dh, Dl] = train_coupled_dict(Xh, Xl, dict_size, lambda, iter);
dict_path = ['Dictionary/Dque_' num2str(dict_size) '_' num2str(lambda) '_' num2str(patch_size) '_' num2str(iter) '.mat' ];
save(dict_path, 'Dh', 'Dl')
toc