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
