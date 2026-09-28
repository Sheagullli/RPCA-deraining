% 读取图像
ori_bus = imread('F:\2024 RPCA video deraining\Experiments\Real\Our\ra1\00004.png');
% 读取图像
I = ori_bus;
figure, imshow(I);
hold on;

% 创建矩形标注工具
h = imrect(gca, [100 100 200 150]); % [x y width height]，初始位置和大小

% 添加回调函数，当矩形移动或调整大小时显示像素位置
addNewPositionCallback(h, @(pos) displayPixelInfo(pos, I));

% 定义显示像素信息的函数
function displayPixelInfo(pos, img)
    % 获取当前坐标轴
    ax = gca;
    
    % 清除之前的文本
    delete(findobj(ax, 'Type', 'text'));
    
    % 显示矩形左上角和右下角的像素位置
    text(pos(1), pos(2), sprintf('(%d, %d)', round(pos(1)), round(pos(2))), ...
        'Color', 'yellow', 'BackgroundColor', 'black', 'FontSize', 10, ...
        'HorizontalAlignment', 'left');
    text(pos(1) + pos(3), pos(2) + pos(4), sprintf('(%d, %d)', round(pos(1) + pos(3)), round(pos(2) + pos(4))), ...
        'Color', 'yellow', 'BackgroundColor', 'black', 'FontSize', 10, ...
        'HorizontalAlignment', 'right');
    
    % 提取矩形区域
    x = round(pos(1));
    y = round(pos(2));
    width = round(pos(3));
    height = round(pos(4));
    roi = img(y:y+height-1, x:x+width-1, :);
    
    % 显示提取的区域
    figure, imshow(roi);
    title('Extracted Region');
    
    % 保存提取的图像
    imwrite(roi, 'extracted_region.png');
end

% 等待用户调整矩形框
wait(h);

% 获取最终的矩形框位置
pos = getPosition(h);

% 提取并保存区域（如果回调函数中没有保存）
x = round(pos(1));
y = round(pos(2));
width = round(pos(3));
height = round(pos(4));
roi = I(y:y+height-1, x:x+width-1, :);
imwrite(roi, 'extracted_region.png');

% 清除图形句柄
delete(h);
hold off;