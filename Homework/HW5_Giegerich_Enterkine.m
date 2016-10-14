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
% Magnesium: 
% Glass: 
% Rock:
% Wood:
%% Step 4: The heat transport eqaution 
%
%
%
%% Step 5: The conservation Equation
%
%
%
%
%% Part 2: Oceanic Lithospheric Cooling
%% Step 1: Setup the model domain and compute
% T(z,t) = T0 * erf(z/(2*sqrt(K*t)))
depthV = 1:100; 
timeV = 1:100; 
K = 1.0e-6;
T0 = 640;
% Now for two for loops
for ii = 1:100;
    
    for jj = 1:100;
        
     T(ii,jj) = T0 .* (ii./(2*sqrt(K*jj)));
    
    end
    
end
 
 imagesc(depthV,timeV,T);
 xlabel('Time [Ma]');
 ylabel('Depth [km]');
 c = colorbar;
 colormap( jet(200));
 ylabel(c,'Temperature');
 zlabel('Temperature');
 figure(1); 
 J = erf(T); 
 
 
%% Using the meshgrid() method

[x1,y1] = meshgrid(depthV,timeV);
Z = T0 .* (x1./(2*sqrt(K*y1)));
imagesc(depthV,timeV,Z);
V = erf(Z);
xlabel('Time');
ylabel('Depth');
c = colorbar;
colormap( jet(200));
ylabel(c,'Temperature');

%% Step 2: Analyze the model output
% Does your model make sense given the boundary conditions used to derive the solution?
% What controls the rate at which the temperature decays? (List all things you can think of.)
% How could we convert this model from age to distance from ridge axis?
% What would be a more appropriate boundary condition at T(z = 0) given what we know about the oceans?
% Is 640?C an appropriate value for the temperature at a mid-ocean ridge? Why or why not?
%% Part 3: Plate velocity and the depth of oceans
% Step 1: Load and plot sea-floor depth data
fields(Bath);
x = 'atlanticz';
y = 'atlanticx';
plot('atlanticz','atlanticx');




 
