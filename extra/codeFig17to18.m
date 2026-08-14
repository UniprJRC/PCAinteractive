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