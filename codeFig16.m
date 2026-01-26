%% 
% *Code for figure 16*
% 
% The following code generates Figure 16.

%% Figure 16
% please note that to obtain the same appearance of Figure 12 
% of the paper you should manually select Map Type: "landcover". 
LatLong=citiesItaly2024.Properties.UserData{2};
Latitude=LatLong(:,1);
Longitude=LatLong(:,2);
out=pcaFS(citiesItaly2024,'Latitude',Latitude,'Longitude',Longitude);
out = pcaFS(citiesItaly2024,'smartEVchart',true);