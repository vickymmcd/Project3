function [X, Y] = pendulum()
    %set up initial conditions
    G = [1.22, .01];
    endTime = 2;
    l = .1;
    
    [t,S] = ode45(@equation, [0,endTime], G);
    %unpack the solution
    theta = S(:,1);   
    dtheta = S(:,2);    

    x = l.*sin(theta);
    y = -l.*cos(theta);
    
    comet(x,y);
    
    %plot(t, theta, 'r-');
    xlabel('Time');
    ylabel('Theta');
    title('Pendulum Position over time');
    X = x;
    Y = y;
    
end