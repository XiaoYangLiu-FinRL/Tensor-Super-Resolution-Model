clc;
clear all;
close all;
 
%加载字典
% load('Dictionary/Dque_512_0.03_9_5.mat');
% load('Dictionary/DGai512_0.03_9_5.mat');
load('FeiTongYiBuFengShuJu512_0.03_9_5.mat');
K=100;
patch_size=9;
row = 1:81;
col = 430:529;
figure(1)

DH=reshape(Dh(:,:,9),81,512);
DH = cat(2,zeros(81,17),DH);
DH = DH(row,col);
DH = DH(:,1:K);
%调用KSVD工具箱中的字典显示函数
im=displayDictionaryElementsAsImage(DH, floor(sqrt(K)), floor(size(DH,2)/floor(sqrt(K))),patch_size,patch_size);

figure(2)
DL=reshape(Dl(1:81,:,9),81,512);
DL = cat(2,zeros(81,17),DL);
DL = DL(row,col);
DL = DL(:, 1:K);
% figure(3);
%调用KSVD工具箱中的字典显示函数
im=displayDictionaryElementsAsImage(DL, floor(sqrt(K)), floor(size(DL,2)/floor(sqrt(K))),patch_size,patch_size);

figure(3)
DL=reshape(Dl(82:162,:,9),81,512);
DL = cat(2,zeros(81,17),DL);
DL = DL(row,col);
DL = DL(:, 1:K);
im=displayDictionaryElementsAsImage(DL, floor(sqrt(K)), floor(size(DL,2)/floor(sqrt(K))),patch_size,patch_size);

figure(4)
DL=reshape(Dl(163:243,:,9),81,512);
DL = cat(2,zeros(81,17),DL);
DL = DL(row,col);
DL = DL(:, 1:K);
im=displayDictionaryElementsAsImage(DL, floor(sqrt(K)), floor(size(DL,2)/floor(sqrt(K))),patch_size,patch_size);

figure(5)
DL=reshape(Dl(244:324,:,9),81,512);
DL = cat(2,zeros(81,17),DL);
DL = DL(row,col);
DL = DL(:, 1:K);
im=displayDictionaryElementsAsImage(DL, floor(sqrt(K)), floor(size(DL,2)/floor(sqrt(K))),patch_size,patch_size);

figure(6)
DL=reshape(Dl(325:405,:,9),81,512);
DL = cat(2,zeros(81,17),DL);
DL = DL(row,col);
DL = DL(:, 1:K);
im=displayDictionaryElementsAsImage(DL, floor(sqrt(K)), floor(size(DL,2)/floor(sqrt(K))),patch_size,patch_size);

figure(7)
DL=reshape(Dl(406:486,:,9),81,512);
DL = cat(2,zeros(81,17),DL);
DL = DL(row,col);
DL = DL(:, 1:K);
im=displayDictionaryElementsAsImage(DL, floor(sqrt(K)), floor(size(DL,2)/floor(sqrt(K))),patch_size,patch_size);