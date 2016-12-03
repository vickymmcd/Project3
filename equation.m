function res = equation(~,M, m1, m2)
    %set given variables
    L1=.1; %m
    L2=.1; %m
    g=9.8; %m/s^2
    
    %unpack current thetas
    z1 = M(1);
    z2 = M(2);
    z3 = M(3);
    z4 = M(4);


    
    %solve for dz3 and dz4
    a = (m1+m2)*L1 ;
    b = m2*L2*cos(z1-z2) ;
    c = m2*L1*cos(z1-z2) ;
    d = m2*L2 ;
    e = -m2*L2*z4* z4*sin(z1-z2)-g*(m1+m2)*sin(z1) ;
    f = m2*L1*z3*z3*sin(z1-z2)-m2*g*sin(z2) ;

    dz3= (e*d-b*f)/(a*d-c*b) ;
    dz4= (a*f-c*e)/(a*d-c*b) ;

    
    %store new positions/velocities in res
    res = [z3; z4; dz3; dz4];
    
end