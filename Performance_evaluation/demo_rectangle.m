% %% 框红色框子
% 1. 读取图像
clear;clc; close all
folder = 'E:\2014-Publication\2022 Gradient domain knowledge driven deep learning deraining\method_comparison';

rainy1 = imread(fullfile(folder,'\space\norain-19.png'));

figure;
imshow(rainy1,'border','tight');
hold on;

% 2. 定义框的位置和大小 [x, y, width, height]
x1 = 218;
y1 = 124;
width1 = 200;
height1 = 138;

% 3. 绘制红色矩形框
rectangle('Position', [x1, y1, width1, height1], ...
    'EdgeColor', 'r', 'LineWidth', 2);

% 4. 获取带标注的图像数据
F1 = getframe(gcf); % 获取当前窗口内容
I_boxed1 = frame2im(F1); % 转换为图像格式

% 5. 保存带框的图像
imwrite(I_boxed1,fullfile(folder,'space19_red.png'));

hold off;
%% =====================================================================================================%
% 
% rainy2 = imread(fullfile(folder,'\ra2\00004.png'));
% figure;
% imshow(rainy2,'border','tight');
% hold on;
% 
% % 2. 定义框的位置和大小 [x, y, width, height]
% x2 = 425;
% y2 = 268;
% width2 = 107;
% height2 = 66;
% 
% % 3. 绘制红色矩形框
% rectangle('Position', [x2, y2, width2, height2], ...
%     'EdgeColor', 'r', 'LineWidth', 2);
% 
% % 4. 获取带标注的图像数据
% F2 = getframe(gcf); % 获取当前窗口内容
% I_boxed2 = frame2im(F2); % 转换为图像格式
% 
% % 5. 保存带框的图像
% imwrite(I_boxed2,fullfile(folder,'ra2_local_red.png'));
% 
% hold off;
% 
% %=========================================================================================================%
% 
% rainy3 = imread(fullfile(folder,'\ra3\00004.png'));
% figure;
% imshow(rainy3,'border','tight');
% hold on;
% 
% % 2. 定义框的位置和大小 [x, y, width, height]
% x3 = 118;
% y3 = 225;
% width3 = 136;
% height3 = 72;
% 
% % 3. 绘制红色矩形框
% rectangle('Position', [x3, y3, width3, height3], ...
%     'EdgeColor', 'r', 'LineWidth', 2);
% 
% % 4. 获取带标注的图像数据
% F3 = getframe(gcf); % 获取当前窗口内容
% I_boxed3 = frame2im(F3); % 转换为图像格式
% 
% % 5. 保存带框的图像
% imwrite(I_boxed3,fullfile(folder,'ra3_local_red.png'));
% 
% hold off;
% 
% 
% %=============================================================================================================%
% 
% rainy4 = imread(fullfile(folder,'\ra4\00004.png'));
% figure;
% imshow(rainy4,'border','tight');
% hold on;
% 
% % 2. 定义框的位置和大小 [x, y, width, height]
% x4 = 302;
% y4 = 424;
% width4 = 103;
% height4 = 53;
% 
% % 3. 绘制红色矩形框
% rectangle('Position', [x4, y4, width4, height4], ...
%     'EdgeColor', 'r', 'LineWidth', 2);
% 
% % 4. 获取带标注的图像数据
% F4 = getframe(gcf); % 获取当前窗口内容
% I_boxed4 = frame2im(F4); % 转换为图像格式
% 
% % 5. 保存带框的图像
% imwrite(I_boxed4,fullfile(folder,'ra4_local_red.png'));

hold off;


%=============================================================================================================%
% 

rainy5 = imread(fullfile(folder,'\ra5\00004.png'));
figure;
imshow(rainy5,'border','tight');
hold on;

% 2. 定义框的位置和大小 [x, y, width, height]
x5 = 118;
y5 = 172;
width5 = 97;
height5 = 60;

% 3. 绘制红色矩形框
rectangle('Position', [x5, y5, width5, height5], ...
    'EdgeColor', 'r', 'LineWidth', 2);

% 4. 获取带标注的图像数据
F5 = getframe(gcf); % 获取当前窗口内容
I_boxed5 = frame2im(F5); % 转换为图像格式

% 5. 保存带框的图像
imwrite(I_boxed5,fullfile(folder,'ra5_local_red.png'));

hold off;


%=============================================================================================================%
% 
rainy6 = imread(fullfile(folder,'\ra6\00004.png'));
figure;
imshow(rainy6,'border','tight');
hold on;

% 2. 定义框的位置和大小 [x, y, width, height]
x6 = 49;
y6 = 55;
width6 = 126;
height6 = 60;

% 3. 绘制红色矩形框
rectangle('Position', [x6, y6, width6, height6], ...
    'EdgeColor', 'r', 'LineWidth', 2);

% 4. 获取带标注的图像数据
F6 = getframe(gcf); % 获取当前窗口内容
I_boxed6 = frame2im(F6); % 转换为图像格式

% 5. 保存带框的图像
imwrite(I_boxed6,fullfile(folder,'ra6_local_red.png'));

hold off;


%=============================================================================================================%

rainy7 = imread(fullfile(folder,'\rb1\00004.png'));
figure;
imshow(rainy7,'border','tight');
hold on;

% 2. 定义框的位置和大小 [x, y, width, height]
x7 = 237;
y7 = 114;
width7 = 89;
height7 = 51;

% 3. 绘制红色矩形框
rectangle('Position', [x7, y7, width7, height7], ...
    'EdgeColor', 'r', 'LineWidth', 2);

% 4. 获取带标注的图像数据
F7 = getframe(gcf); % 获取当前窗口内容
I_boxed7 = frame2im(F7); % 转换为图像格式

% 5. 保存带框的图像
imwrite(I_boxed7,fullfile(folder,'rb1_local_red.png'));

hold off;

%=============================================================================================================%

rainy8 = imread(fullfile(folder,'\rb3\00004.png'));
figure;
imshow(rainy8,'border','tight');
hold on;

% 2. 定义框的位置和大小 [x, y, width, height]
x8 = 76;
y8 = 35;
width8 = 91;
height8 = 60;

% 3. 绘制红色矩形框
rectangle('Position', [x8, y8, width8, height8], ...
    'EdgeColor', 'r', 'LineWidth', 2);

% 4. 获取带标注的图像数据
F8 = getframe(gcf); % 获取当前窗口内容
I_boxed8 = frame2im(F8); % 转换为图像格式

% 5. 保存带框的图像
imwrite(I_boxed8,fullfile(folder,'rb3_local_red.png'));

hold off;

