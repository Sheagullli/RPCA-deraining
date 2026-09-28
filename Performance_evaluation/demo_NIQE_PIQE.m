%% 无参评价
% for our NIQE and  PIQE assessment

imageFolder1 = 'F:\2024 RPCA video deraining\Experiments\Real\Our\ra2';
fileList = dir(fullfile(imageFolder1, '*.png'));
% fileList = dir(fullfile(imageFolder1, '*.jpg'));
niqe_our = 0;
piqe_our = 0;
for i = 1:60
    imgPath = fullfile(imageFolder1, fileList(i).name);
    I = imread(imgPath);
    if size(I, 3) == 3
        I = rgb2gray(I);
    end
    niqeScores(i) = niqe(I);
    PIQEScores(i) = piqe(I);

    niqe_our = niqe_our + niqeScores(i);
    piqe_our = piqe_our + PIQEScores(i);
end
average_niqe_our = niqe_our/length(fileList);
average_piqe_our = piqe_our/length(fileList);

disp(['average niqe score of our method is : ', num2str(average_niqe_our), ', and   verage_piqe score of our method is: ' ,num2str(average_piqe_our)]);

%%===================================================================================================%%

