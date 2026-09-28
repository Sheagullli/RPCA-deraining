%% demo for compute the local region of results

%%=============================================================================================================%%
ori_bus = imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\rainy\clean_05.png');
% 读取图像
I = ori_bus;
figure, imshow(I);

% 提示用户选择两个点（矩形对角）
disp('请点击两个点来定义矩形区域');
[x, y] = ginput(2);

% 计算矩形参数
x1 = min(x); x2 = max(x);
y1 = min(y); y2 = max(y);
width = x2 - x1;
height = y2 - y1;

% 绘制矩形
rectangle('Position', [x1 y1 width height], 'EdgeColor', 'r', 'LineWidth', 2);

% 显示像素位置信息
text(x1, y1, sprintf('(%d, %d)', round(x1), round(y1)), ...
    'Color', 'white', 'BackgroundColor', 'black', 'FontSize', 10);
text(x2, y2, sprintf('(%d, %d)', round(x2), round(y2)), ...
    'Color', 'white', 'BackgroundColor', 'black', 'FontSize', 10);

% 显示中心位置
centerX = (x1 + x2)/2;
centerY = (y1 + y2)/2;
text(centerX, centerY, ...
    sprintf('Center: (%d, %d)', round(centerX), round(centerY)), ...
    'Color', 'yellow', 'BackgroundColor', 'black', 'FontSize', 10, ...
    'HorizontalAlignment', 'center');

