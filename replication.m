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

%%
% *Code for figures [2, 8]*
%
% The following code generates Figures from 2 to 8.

%% Figures 2-8
load('citiesItaly2024.mat');

out = pcaFS(citiesItaly2024,'smartEVchart',true,'colorBlindSafe',true);
%{
    out = pcaFS(citiesItaly2024,'smartEVchart',true,'colorBlindSafe',false);
%}

%%
% *Code for figures [9, 15]*
%
% The following code generates Figures from 9 to 15.

%% Figures 9-15
load('citiesItaly2024.mat');

Xsel=citiesItaly2024(:,{'Employm' 'Protest' 'UrbanFra'});
ShapeFile=citiesItaly2024.Properties.UserData{1};

out=pcaFS(Xsel,'ShapeFile',ShapeFile,'colorBlindSafe',true);

%{
    out=pcaFS(Xsel,'ShapeFile',ShapeFile,'colorBlindSafe',false);
%}

%%
% *Code for figure 16*
%
% The following code generates Figure 16.

%% Figure 16
% please note that to obtain the same appearance of Figure 12
% of the paper you should manually select Map Type: "landcover".
load('citiesItaly2024.mat');

LatLong=citiesItaly2024.Properties.UserData{2};
Latitude=LatLong(:,1);
Longitude=LatLong(:,2);

out = pcaFS(citiesItaly2024,'Latitude',Latitude,'Longitude',Longitude,'colorBlindSafe',true);


%{

out = pcaFS(citiesItaly2024,'Latitude',Latitude,'Longitude',Longitude,'colorBlindSafe',false);

%}

%% 
% *Code for figures [17, 18]*
% 
% The following code generates Figures from 17 to 18.

%% Figure 17-18
load('citiesItaly2024.mat');

Xsel=citiesItaly2024(:,["Employm" "Protest" "UrbanFra"]);


% please note that to obtain the same appearance of Figures 17 and 18 
% of the paper you should manually rotate the plots. 
figure
pcaProjection(Xsel)

%% 
% *Code for figures [A1 - A4]*
% 
% The following code generates Figures A1-A4 in the Appendix

%% Figures A1-A3
load('citiesItaly2024.mat');
spmplot(citiesItaly2024)
pcaFS(citiesItaly2024,'plots',"Loadings");

% Please note that in order to obtain Figure A3 you should click on
% showRowNames and set the knob control to 45.

%% Figure A4
Xsel=citiesItaly2024(:,{'Employm' 'Protest' 'UrbanFra'});
% MCD using bdp of 0.25
robust=struct;
robust.bdp=0.25;
robust.class="MCD";
pcaFS(Xsel,'plots',false,'robust',robust);

% Please note that in order to obtain Figure A4 you should click on
% showRowNames and set the knob control to about 50.
% Please note that to show the ellipse in Figure A4 you should click 
% on the check box conf. ell.
