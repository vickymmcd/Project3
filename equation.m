function res = equation(~,M)
    %set given variables
    m1=60; %kg
    m2=60; %kg
    L1=.1; %m
    L2=.1; %m
    g=9.8; %m/s^2
    
    %unpack current thetas
    z1 = M(1);
    z2 = M(2);
    z3 = M(3);
    z4 = M(4);


    
    %solve for dz3 and dz4
    num1 = (m2*L1*z4^2*sin(z1-z2)*cos(z1-z2)+g*m2*sin(z2)*cos(z1-z2)-m2*L2*z4^2*sin(z1-z2)-(m1+m2)*g*sin(z1));
    den1 = L1*(m1+m2)-m2*L1*cos^2(z1-z2);
    dz3 = -num1/den1;
    
    %store new positions/velocities in res
    res = [z3; z4; dz3; dz4];
    
end