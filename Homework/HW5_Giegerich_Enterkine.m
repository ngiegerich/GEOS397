%% HW #5 Seafloor Subsidence due to cooling (Nick G. & Josh E.)  
clear all 
clc
%% Part 1: A Model 
r = rectangle('Position',[1 2 13 10],'FaceColor','r');
axis([-2 16 0 15]);
text(0,12,'T1'); 
text(0,2,'T2');
text(7,1,'<--Infinity-->');
text(15,6,'<--Infinity-->','rotation',90);
h = text(-1,6,'Thickness (d)','rotation',90);
%% Step 2: Heat Flow 
% Q = -k((T2-T1)/d)
% Why does heat flow down in this equation? 
%% Step 3: Thermal Conductivities 
% Silver: 
