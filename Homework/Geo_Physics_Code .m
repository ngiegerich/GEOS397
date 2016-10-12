lat = latitude
lon = longitude
%% Converted latitude and longitude to same scale  
mstruct = defaultm('sinusoid');
[x,y] = projfwd(mstruct,lat,lon);
mstruct.maplonlimit = [-150 -30];
mstruct.geoid = referenceEllipsoid('grs80','kilometers');
mstruct = defaultm(mstruct);
mstruct.origin;
plot(x,y,'.');
%% Converted Dates to a number 
t = time;
a = regexprep(t,'[T Z]+',' ');
DateNumber = datenum(a);
Z = DateNumber;
%% Convert Energy of EQ's into joules 
M = 10.^((mag+6)*(1.5)); 
plot(Z,M,'.'); 
%%