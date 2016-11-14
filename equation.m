function res = equation(~,M)
    %set given variables
    m=70; %kg
    l=.1; %m
    g=9.8; %m/s^2
    
    %unpack current position and velocity
    theta = M(1);
    dtheta = M(2);
    
    %solve for ddtheta
    ddtheta = -(g*sin(theta))/l;
    
    %store new positions/velocities in res
    res = [dtheta; ddtheta];
    
end