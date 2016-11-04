clear all 
clc
%%
x = 0:4;
coef = [3.75 .25];
y0 = polyval(coef,x);
plot(x,y0,'o');
 
coef1 = [5 7]; 
y1 = polyval(coef1,x);
hold on 
plot(x,y1,'r+');

coef2 = [2 0 0];
y2 = polyval(coef2,x);
hold on 
plot(x,y2,'bo'); 

coef3 = [3 2 1 0]; 
y3 = polyval(coef3,x);
hold on 
plot (x,y3,'g.');

coef4 = [1 0 0 0 0 0 3 -3];
y4 = polyval(coef4,x);
hold on 
plot (x,y4,'b.'); 

tStr = sprintf 
