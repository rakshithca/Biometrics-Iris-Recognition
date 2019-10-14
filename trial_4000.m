% This is Submission for CS-599:Biometircs fall 2019 
% Assignment 2 :  Design and Evaluate an Iris Recognition System
% Group:
%   1. Rakshith Churchagundi Amarnath
%   2. Urvi Chandreshkumar Sheth
%   3. Aditya Yaji
%


clc;
clear all;


image_folder_p = 'D:\Biometrics\Probe2\';  % Here Prob1 reffers to folder LG4000-2010-04-27_29 which was supposed to use as Probe 2
S = dir(fullfile(image_folder_p,'*'));  
N = setdiff({S([S.isdir]).name},{'.','..'}); 

image_folder_g = 'D:\Biometrics\Gallery2000\'; % This folder have LG2200 2008 data which was supposed to be used as gallery
SG = dir(fullfile(image_folder_g,'*'));
NG = setdiff({SG([SG.isdir]).name},{'.','..'});


array_hd = zeros(89,221);% Creating a 2D array storing the hamming distance for each probe and gallary image comparisions

count_p = 1;% Counter for array - probe image- columns

for ii = 1:numel(N)    %first loop to all the folders inside probe 2
    T = dir(fullfile(image_folder_p,N{ii},'*.tiff')); % In each folder in Probe 2, Taking the tiff files.
    C = {T(~[T.isdir]).name}; % name of the tiff files in subfolder.
    
    for jj = 1:numel(C)   % for each image file
        F = fullfile(image_folder_p,N{ii},C{jj});   %Full path of the image
        [template1, mask1] = createiristemplate(F);  % Get he template and mask calculated using the function for a particular image
    
        for iii = 1:numel(NG) % loop to all the folders inside gallery 
            TG = dir(fullfile(image_folder_g,NG{iii},'*.tiff')); % In each folder in Gallery, Taking the tiff files
            CG = {TG(~[TG.isdir]).name}; % name of the tiff files in subfolder.
            count_g = 1; %Counter for array - gallery image- rows
            
            for jjj = 1:numel(CG) % for each file in subfolder of Gallery
                FG = fullfile(image_folder_g,NG{iii},CG{jjj});  %Full path of the image          
               [template2, mask2] = createiristemplate(FG);% Get the template and mask calculated using the function

                scales = 5.0;% constant value
      
                 %Compare the two template from probe 1 and gallery and get hamming distance
                 hd = gethammingdistance(template1, mask1, template2, mask2, scales);
                 disp(hd); %display the hamming distance
                 array_hd(count_g,1) = NG{iii};
                 array_hd(count_g,count_p+1) = hd;% store the hd in 2-d array 
                count_g = count_g + 1;% increment count for next gallery
             end 
        end
        count_p = count_p + 1;% increment count for next probe
        fprintf("End");
    end
end
    
dirfilename=strcat('D:\Biometrics\','values_4000.xlsx'); 
xlswrite(dirfilename,array_hd);

  
    