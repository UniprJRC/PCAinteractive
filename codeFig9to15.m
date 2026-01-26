%% 
% *Code for figures [9, 15]*
% 
% The following code generates Figures from 9 to 15.

%% Figures 9-15
Xsel=citiesItaly2024(:,{'Employm' 'Protest' 'UrbanFra'});

ShapeFile=citiesItaly2024.Properties.UserData{1};
out=pcaFS(Xsel,'ShapeFile',ShapeFile);