function z = topoModeling (z,k,dt,dx,tMax,t0,nNode);
%%

for t = (t0+dt:dt:tMax);
    for x = (2:nNode-1);
        z(1) = 0; 
        z(nNode) = 0; 
        
        z(x) = ((z(x-dx)+z(x+dx)-2*z(x))*dt*k)/(dx^2)+z(x);
    end
end