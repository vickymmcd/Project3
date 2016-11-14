function pendulum()
    %set up initial conditions
    G = [1.22, .01];
    endTime = 2;
    
    [t,S] = ode45(@equation, [0,endTime], G);
    %unpack the solution
    theta = S(:,1);    
    
    plot(t, theta, 'r-');
    xlabel('Time');
    ylabel('Theta');
    title('Pendulum Position over time');
    
end