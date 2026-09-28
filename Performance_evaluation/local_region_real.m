%% extract local reigion

%% 1. rainy  frame
folder1 = 'F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra1_spacCNN';
rainy1 = imread('F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra1_spacCNN\00004.jpg');
rainy1_local= rainy1(247:313,256:357,:);
imwrite(rainy1_local,fullfile(folder1,'ra1_local.png'));

folder2 = 'F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra2_spacCNN';
rainy2 = imread('F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra2_spacCNN\00004.jpg');
rainy2_local= rainy2(268:334,425:532,:);
imwrite(rainy2_local,fullfile(folder2,'ra2_local.png'));

folder3 = 'F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra3_spacCNN';
rainy3 = imread('F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra3_spacCNN\00004.jpg');
rainy3_local= rainy3(225:297,118:254,:);
imwrite(rainy3_local,fullfile(folder3,'ra3_local.png'));

folder4 = 'F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra4_spacCNN';
rainy4 = imread('F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra4_spacCNN\00004.jpg');
rainy4_local= rainy4(424:477,302:405,:);
imwrite(rainy4_local,fullfile(folder4,'ra4_local.png'));

folder5 = 'F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra5';
rainy5 = imread('F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra5\00004.jpg');
rainy5_local= rainy5(172:232,118:215,:);
imwrite(rainy5_local,fullfile(folder5,'ra5_local.png'));

folder6 = 'F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra6';
rainy6 = imread('F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\ra6\00004.jpg');
rainy6_local= rainy6(55:115,49:155,:);
imwrite(rainy6_local,fullfile(folder6,'ra6_local.png'));

folder7 = 'F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\rb1_spacCNN';
rainy7 = imread('F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\rb1_spacCNN\00004.jpg');
rainy7_local= rainy7(114:165,237:326,:);
imwrite(rainy7_local,fullfile(folder7,'rb1_local.png'));

folder8 = 'F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\rb3_spacCNN';
rainy8 = imread('F:\2024 RPCA video deraining\Experiments\Real\SpacCNN\rb3_spacCNN\00004.jpg');
rainy8_local= rainy8(43:90,76:167,:);
imwrite(rainy8_local,fullfile(folder8,'rb3_local.png'));