function [X, Y1,Y2] = pendulum(G)
    %set up initial conditions
    endTime = 15;
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
    
%     hold on;
%     plot(t, theta1, 'r-');
%     plot(t, theta2, 'b-');
%      comet(x1, y1);
%      comet(x2, y2);

    
    %plot(t, theta, 'r-');
    %comet(theta1,theta2);
%     xlabel('Theta 1');
%     ylabel('Theta 2');
%     title('Pendulum Angle Variation');
    X = t;
    Y1=y1;
    Y2=y2;
end