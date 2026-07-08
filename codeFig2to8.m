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
