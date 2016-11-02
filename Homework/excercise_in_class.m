clear all 
clc
%%
P = [1, 0, -2, -5];
roots(P)
%%
y = @(x) sin(x);
fzerogui( y, [1,4] );
%%
P1 = [1, 0, 0, -0.001];
roots(P1)
%% 
y1 = @(x) log(x+2/3);
fzerogui( y1, [0,1] );
%%
y2 = @(x) sign(x-2).*sqrt(abs(x-2));
fzerogui( y2, [1,4] );
%%
y3 = @(x) atan(x) - pi/3;
fzerogui( y3, [0,5] ); 
%%
y4 = @(x) 1/(x-pi);
fzerotx( y4, [0,5] );

