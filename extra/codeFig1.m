%% 
% *Check FSDA installation and load data*
% 
% This section verifies that the FSDA (Flexible Statistics Data Analysis) toolbox 
% is correctly installed and available on the MATLAB path.
% 
% Specifically, it:
%% 
% * checks for the presence of the function addFSDA2path, used as an indicator 
% that FSDA is installed;
% * attempts to load the dataset 'citiesItaly2024.mat';
% * raises an error if FSDA is not installed or if the installed version is 
% outdated and does not include the required dataset.
%% 
% In case of issues, the user is advised to remove the current FSDA version 
% and install the latest one.

%% Check that FSDA is installed
if exist('addFSDA2path','file')~=2
    error('FSDA:notinstalled','FSDA not found on the MATLAB path. Please install FSDA and add it to the path.');
end

try
    load('citiesItaly2024.mat');
catch     
    disp('FSDA version is too old, remove current version and install the latest version')
    error('FSDA:FileNotFound','FSDA appears to be present but dataset citiesItaly2024 is not found')
end

%% 
% 
% 
% *SPM plot of the data (Figure 1)*
% 
% This section creates a Scatter Plot Matrix (SPM) of the 'citiesItaly2024' 
% dataset using the FSDA function spmplot.


%% Figure 1
typespm = struct;
typespm.upper = 'circle';
[H,AX,BigAx] = spmplot(citiesItaly2024,'order','AOE','typespm',typespm,'colorBackground',true,'colorBlindSafe',true);

%{  
    % This would produce the plot with the default Rcolor style
    [H,AX,BigAx] = spmplot(citiesItaly2024,'order','AOE','typespm',typespm,'colorBackground',true);
%}
