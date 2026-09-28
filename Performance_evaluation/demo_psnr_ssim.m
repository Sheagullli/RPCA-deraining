clear all;
ts =0;
tp =0;
% for i=1:100                          % the number of testing samples
%    x_true=im2double(imread(strcat('.\experiment\RCDNet_syn\results\',sprintf('norain-%d_x2_HR.png',i))));  % groundtruth 
%    x_true = rgb2ycbcr(x_true);
%    x_true = x_true(:,:,1); 
%    x = im2double(imread(strcat('.\experiment\RCDNet_syn\results\',sprintf('norain-%d_x2_SR.png',i))));     %reconstructed image
%    x = rgb2ycbcr(x);
%    x = x(:,:,1);
%    tp= tp+ psnr(x,x_true);
%    ts= ts+ssim(x*255,x_true*255);
% end
% fprintf('psnr=%6.4f, ssim=%6.4f\n',tp/1000,ts/1000)

x_true_1=im2double(imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\rainy\clean_05.png'));  % groundtruth 

x_true_1 = rgb2ycbcr(x_true_1);
x_true_1 = x_true_1(:,:,1); 

x_1 = im2double(imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\SpacCNN\SPACCNN_a1.png'));     %reconstructed image
x_1 = rgb2ycbcr(x_1);
x_1 = x_1(:,:,1);

psnr_1 = psnr(x_1,x_true_1);
ssim_1 = ssim(x_1*255,x_true_1*255);

%=================================================================================================================================%

x_true_2=im2double(imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\rainy\clean_09.png'));  % groundtruth 

x_true_2 = rgb2ycbcr(x_true_2);
x_true_2 = x_true_2(:,:,1); 

x_2 = im2double(imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\SpacCNN\SPACCNN_a2.png'));     %reconstructed image
x_2 = rgb2ycbcr(x_2);
x_2 = x_2(:,:,1);

psnr_2 = psnr(x_2,x_true_2);
ssim_2 = ssim(x_2*255,x_true_2*255);

%==================================================================================================================================%

x_true_3=im2double(imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\rainy\clean_15.png'));  % groundtruth 

x_true_3 = rgb2ycbcr(x_true_3);
x_true_3 = x_true_3(:,:,1); 

x_3 = im2double(imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\SpacCNN\SPACCNN_a3.png'));     %reconstructed image
x_3 = rgb2ycbcr(x_3);
x_3 = x_3(:,:,1);

psnr_3 = psnr(x_3,x_true_3);
ssim_3 = ssim(x_3*255,x_true_3*255);

%==================================================================================================================================%
x_true_4=im2double(imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\rainy\clean_39.png'));  % groundtruth 

x_true_4 = rgb2ycbcr(x_true_4);
x_true_4 = x_true_4(:,:,1); 

x_4 = im2double(imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\SpacCNN\SPACCNN_a4.png'));     %reconstructed image
x_4 = rgb2ycbcr(x_4);
x_4 = x_4(:,:,1);

psnr_4 = psnr(x_4,x_true_4);
ssim_4 = ssim(x_4*255,x_true_4*255);

psnr = (psnr_1 + psnr_2 + psnr_3 + psnr_4)/4;
ssim = (ssim_1 + ssim_2 + ssim_3 + ssim_4)/4;

disp(['psnr score of our method is : ', num2str(psnr), ', and   ssim score of our method is: ' ,num2str(ssim)]);