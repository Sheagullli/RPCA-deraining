% Introduction
% This is a demo for video rain streaks removal.
% ‘An L1/L2 ratio regularized tensor robust PCA decomposition model for video rain streak removal(TRPCA: tensor robust principle component analysis)’
clear all; close all; clc;
path(path,'.\Lib');

%%--- Load Video ---%%%
frames = 75;
load 'F:\雨数据库\videorain\NTUrain\Dataset_Training_Synthetic\Dataset_Training_Synthetic\t1_Rain_01\t11_rain.mat'
Rainy=  Rainy(:,:,:,1:frames);  % for foreman, waterfall, highway
% Rainy=  Bus_Rainy(:,:,:,1:frames);    % for Bus


load 'F:\2024 RPCA video deraining\Data\high2way_clean.mat'
B_clean = B_clean(:,:,:,1:frames);
% B_clean = Bus_clean(:,:,:,1:frames);

methodname{1}= 'Rainy ' 
methodname{2}= 'Rain-free';
padsize = 5;

% implay(Rainy); implay(B_clean);
[O_Rainy,~] = rgb2gray_hsv(Rainy);
[O_clean,O_hsv]=rgb2gray_hsv(B_clean);
Rain = O_Rainy - O_clean;
PSNR0 = PSNR3D(O_Rainy,O_clean);

SSIM_B10 = ssim2(O_Rainy,O_clean);
SSIM_R10 = ssim2(zeros(size(Rain)),Rain);
RSE0 = norm(O_Rainy(:)-O_clean(:),'fro');

[row,column,frame]= size (O_Rainy);

%% ---------- Parameters for our designed--------- %%%
% opts.tol=1e-3;
% w_weight = [1 1 1];
% opts.weight = w_weight/sum(w_weight);
% opts.maxit = 100;
% % C=10000;
% C=9450;
% 
% opts.alpha1=100;
% opts.alpha2=17;
% 
% % opts.alpha2=6;
% % opts.alpha3=1;
% opts.alpha3 =C*(1/sqrt(max(row,column)*frame));
% opts.alpha4=10;
% opts.alpha5=120;
% 
% opts.alpha6 =1000;
% 
% opts.beta=1;
% opts.gamma = 1.3;   % 查找L1/L2范数文献，该参数的设定    
% opts.ro = 1510;    % L1/L2范数该参数设定；
% ---------- Parameters for toher datasets--------- %%%
opts.tol=1e-3;
w_weight = [1 1 1];
opts.weight = w_weight/sum(w_weight);
opts.maxit = 100;
% C=10000;
C=9450;

opts.alpha1=100;
% opts.alpha2=17;

opts.alpha2=6;
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

 [B_1,~]= TRPCA(O_Rainy,opts);

time= toc;
% ----remove padding------%
B_1=smaller(B_1,padsize);
O_Rainy = smaller(O_Rainy,padsize);
R_1 = O_Rainy - B_1;

% reporting PSNR, RSE and SSIM of B and Rain
O_clean = O_clean;
PSNR1 = PSNR3D(B_1,O_clean);
SSIM_B11 = ssim2(B_1,O_clean);
SSIM_R11 =ssim2(R_1,Rain);
B_DIP = gray2color_hsv(O_hsv,B_1);
RSE1=    norm(B_1(:)-O_clean(:),'fro');
for ii = 1:size(B_DIP,4)
        T2 =rgb2gray(B_DIP(:,:,:,ii));
        T1 = rgb2gray(B_clean(:,:,:,ii));
        T0 = rgb2gray(Rainy(:,:,:,ii));
        RC = T0 - T1;
        RD = T0 - T2;
        PSNRV(ii) = psnr(T2,T1);
        [SSIMV(ii),~] = ssim(T2,T1);

        PSNRR(ii) = psnr(RD,RC);
        [SSIMR(ii),~]=ssim(RD,RC);
end
 MPSNR  = mean(PSNRV);
 MSSIM = mean(SSIMV);
 MPSNRR = mean(PSNRR); % rain streak
 MSSIMR = mean(SSIMR);% rain streak

%  
% disp(['Mean PSNR is : ', num2str(MPSNR), ',   Mean SSIM is: ' ,num2str(MSSIM),',   Mean PSNR of rain streak is: ', num2str(MPSNRR),',   Mean SSIM of rain streak is: ', num2str(MSSIMR)]);
% fprintf('\n');
% fprintf('==================Time: %5.3f==========================\n',time_TRPCA);
% fprintf('        ||    %6.9s   ||%6.6s  ||  %6.7s  || ', num2str(PSNR1), num2str(SSIM_B11),num2str(SSIMR11));
disp(['Mean PSNR is : ', num2str(MPSNR), ',   Mean SSIM is: ' ,num2str(MSSIM)]);
fprintf('\n');

fprintf('===========Time:  %5.3f=========================\n',time);
fprintf('        ||    %6.9s   ||%6.6s  ||  %6.7s  ||  %6.7s  ||  %6.6s        ||\n',' item ',' PSNR ', 'SSIM-B','SSIM-R',' RSE ');
fprintf('        || %6.9s  || %5.3f || %5.6f || %5.6f || %5.6f ||\n',...
    methodname{1},...
    PSNR0,...
    SSIM_B10,...
    SSIM_R10,...
    RSE0);
fprintf('        || %6.9s || %5.3f || %5.6f || %5.6f || %5.6f ||\n',...
    methodname{2},...
    PSNR1,...
    SSIM_B11,...
    SSIM_R11,...
    RSE1);
fprintf('===================================================\n');

B_c=gray2color_hsv(O_hsv,(B_1));

implay(B_c);

% saving results
folderPath='F:\2024 RPCA video deraining\Experiments\comparison\Ours';
save(fullfile(folderPath, 'Ours_high2way_case3.mat'), 'B_c');

B_c_frame_50= B_c(:,:,:,50);
imwrite(B_c_frame_50,fullfile(folderPath, 'Ours_high2way_case3.png'));

rain = Rainy-B_c;

folderPath='F:\2024 RPCA video deraining\Experiments\comparison\Ours';
save(fullfile(folderPath, 'Ours_high2way_case3_rain_streak.mat'), 'rain');

rain_frame_50= rain(:,:,:,50);
imwrite(rain_frame_50,fullfile(folderPath, 'Ours_high2way_case3_rain.png'));
