%% residual for synthesized frames
clear;clc
%% ==========================================================================================================%%
% for ourdata

% folder = 'F:\2024 RPCA video deraining\Experiments\ourdataset\Ours';
% 
% man = imread('F:\2024 RPCA video deraining\Experiments\ourdataset\Rainy_ground\Ground_foreman_case1.png');
% bus = imread('F:\2024 RPCA video deraining\Experiments\ourdataset\Rainy_ground\Ground_Bus_case1.png');
% way = imread('F:\2024 RPCA video deraining\Experiments\ourdataset\Rainy_ground\Ground_high2way_case1.png');
% water = imread('F:\2024 RPCA video deraining\Experiments\ourdataset\Rainy_ground\Ground_waterfall_case1.png');
% 
% %=================================================================================================================%
% man1 = imread(fullfile(folder,'Ours_foreman_case1.png'));
% man2 = imread(fullfile(folder,'Ours_foreman_case2.png'));
% man3 = imread(fullfile(folder,'Ours_foreman_case3.png'));
% 
% errorman1 = man1 - man;
% errorman2 = man2 -man ;
% errorman3 = man3 -man ;
% % errorman1 = man - man1;
% % errorman2 = man - man2 ;
% % errorman3 = man - man3 ;
% 
% imwrite(errorman1,fullfile(folder,'manerror_1.png'));
% imwrite(errorman2,fullfile(folder,'manerror_2.png'));
% imwrite(errorman3,fullfile(folder,'manerror_3.png'));
% 
% %=================================================================================================================%
% bus1 = imread(fullfile(folder,'Ours_Bus_case1.png'));
% bus2 = imread(fullfile(folder,'Ours_Bus_case2.png'));
% bus3 = imread(fullfile(folder,'Ours_Bus_case3.png'));
% 
% errorbus1 = bus1 - bus;
% errorbus2 = bus2 -bus ;
% errorbus3 = bus3 -bus ;
% 
% % errorbus1 = bus - bus1;
% % errorbus2 = bus - bus2 ;
% % errorbus3 = bus - bus3 ;
% 
% imwrite(errorbus1,fullfile(folder,'buserror_1.png'));
% imwrite(errorbus2,fullfile(folder,'buserror_2.png'));
% imwrite(errorbus3,fullfile(folder,'buserror_3.png'));
% 
% %=================================================================================================================%
% way1 = imread(fullfile(folder,'Ours_high2way_case1.png'));
% way2 = imread(fullfile(folder,'Ours_high2way_case2.png'));
% way3 = imread(fullfile(folder,'Ours_high2way_case3.png'));
% 
% errorway1 =  way1- way;
% errorway2 = way2 -way ;
% errorway3 = way3 - way;
% 
% % errorway1 =  way- way2;
% % errorway2 = way - way2 ;
% % errorway3 = way - way3;
% 
% imwrite(errorway1,fullfile(folder,'wayerror_1.png'));
% imwrite(errorway2,fullfile(folder,'wayerror_2.png'));
% imwrite(errorway3,fullfile(folder,'wayerror_3.png'));
% 
% %=================================================================================================================%
% water1 = imread(fullfile(folder,'Ours_waterfall_case1.png'));
% water2 = imread(fullfile(folder,'Ours_waterfall_case2.png'));
% water3 = imread(fullfile(folder,'Ours_waterfall_case3.png'));
% 
% errorwater1 = water1 - water;
% errorwater2 =  water2- water;
% errorwater3 = water3 - water;
% 
% % errorwater1 = water - water1;
% % errorwater2 = water - water2;
% % errorwater3 = water - water3;
% 
% imwrite(errorwater1,fullfile(folder,'watererror_1.png'));
% imwrite(errorwater2,fullfile(folder,'watererror_2.png'));
% imwrite(errorwater3,fullfile(folder,'watererror_3.png'));
% 
% disp('finishing saving fastderain');

%%=========================================================================================================================%%

% for rainsynall 100 dataset

clean_05= imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\rainy\clean_05.png');
clean_09= imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\rainy\clean_09.png');
clean_15= imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\rainy\clean_15.png');
clean_39= imread('F:\2024 RPCA video deraining\Experiments\Rainall100dataset\rainy\clean_39.png');

folder = 'F:\2024 RPCA video deraining\Experiments\Rainall100dataset\SpacCNN';
img_05 = imread(fullfile(folder,'SPACCNN_a1.png'));
img_15 = imread(fullfile(folder,'SPACCNN_a3.png'));
img_09 = imread(fullfile(folder,'SPACCNN_a2.png'));
img_39 = imread(fullfile(folder,'SPACCNN_a4.png'));

error05 = img_05 - clean_05;
error09 = img_09 - clean_09;
error15 = img_15 - clean_15;
error39 = img_39 - clean_39;

% errorwater1 = water - water1;
% errorwater2 = water - water2;
% errorwater3 = water - water3;

imwrite(error05,fullfile(folder,'error05.png'));
imwrite(error09,fullfile(folder,'error09.png'));
imwrite(error15,fullfile(folder,'error15.png'));
imwrite(error39,fullfile(folder,'error39.png'));






