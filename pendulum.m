function [X, Y] = pendulum()
    %set up initial conditions
    G = [pi/2, pi/2, 0, 0];
    endTime = 5;
    l = .1;
    
    [t,S] = ode45(@equation, [0,endTime], G);
    %unpack the solution
    theta1 = S(:,1);   
    theta2 = S(:,2);
    dtheta1 = S(:,3);
    dtheta2 = S(:,4);

    x1 = l.*sin(theta1);
    y1 = -l.*cos(theta1);
    x2 = l.*sin(theta1) + l.*sin(theta2);
    y2 = -l.*cos(theta1)- l.*cos(theta2);
    
    hold on;
%     plot(t, theta1, 'r-');
%     plot(t, theta2, 'b-');
    comet(x1, y1);
    comet(x2, y2);

    
    %plot(t, theta, 'r-');
    xlabel('Time');
    ylabel('Theta');
    title('Pendulum Position over time');
    X = x1;
    Y = y1;
    
end