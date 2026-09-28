% Introduction
% This is a demo for video rain streaks removal.
% ‘An L1/L2 ratio regularized tensor robust PCA decomposition model for video rain streak removal(TRPCA: tensor robust principle component analysis)’
clear all; close all; clc;
path(path,'.\Lib');

%%--- Load Video ---%%%

load 'F:\2024 RPCA video deraining\Data\RainsynAll100\ra1_Rain_04\a4.mat'
Rainy= Rainy;
% Rainy= input(:,:,:,1:75);
[O_Rainy,O_hsv] = rgb2gray_hsv(Rainy);

padsize = 5;
[row,column,frame]= size (O_Rainy);

%% ---------- Parameters --------- %%%
opts.tol=1e-3;
w_weight = [1 1 1];
opts.weight = w_weight/sum(w_weight);
opts.maxit = 100;
% C=10000;
C=9450;

opts.alpha1=100;
opts.alpha2=17;

% opts.alpha2=6;
% opts.alpha3=1;
opts.alpha3 =C*(1/sqrt(max(row,column)*frame));
opts.alpha4=10;
opts.alpha5=120;

opts.alpha6 =1000;

opts.beta=1;
opts.gamma = 1.3;   % 查找L1/L2范数文献，该参数的设定    
opts.ro = 1510;    % L1/L2范数该参数设定；


% ---------padding video--------------%
O_Rainy = biger(O_Rainy,padsize);

%---- Rain streak removal -----%
tic;

 [B_11,~]= TRPCA(O_Rainy,opts);
 [B_1,~]= TRPCA(B_11,opts);
% [B_1,~]= TRPCA(O_Rainy,opts);
toc;
% ----remove padding------%
B_1=smaller(B_1,padsize);
O_Rainy = smaller(O_Rainy,padsize);
R_1 = O_Rainy - B_1;


B_c=gray2color_hsv(O_hsv,(B_1));

implay(B_c);

% saving results
folderPath='F:\2024 RPCA video deraining\Experiments\Rainall100dataset\our1';
save(fullfile(folderPath, 'Ours_a3.mat'), 'B_c');

B_c_frame_50= B_c(:,:,:,4);
imwrite(B_c_frame_50,fullfile(folderPath, 'Ours_a3.png'));

rain = Rainy-B_c;

folderPath='F:\2024 RPCA video deraining\Experiments\Rainall100dataset\our1';
save(fullfile(folderPath, 'Ours_a3_rain.mat'), 'rain');

rain_frame_50= rain(:,:,:,4);
imwrite(rain_frame_50,fullfile(folderPath, 'Ours_a3_rain.png'));
