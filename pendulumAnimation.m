function pendulumAnimation()

    function animate_func(T,M)
        % animate the positions of the planets, assuming that the
        % columns of M are x1, y1, x2, y2.
        theta1 = M(:,1);   
        theta2 = M(:,2);

        l=.1;
        X1 = l.*sin(theta1);
        Y1 = -l.*cos(theta1);
        X2 = l.*sin(theta1) + l.*sin(theta2);
        Y2 = -l.*cos(theta1)- l.*cos(theta2);
        
        minmax = [min([0;X2]), max([0;X2]), min([0;Y2]), max([0;Y2])];
        for i=1:length(T)
            clf;
            axis(minmax);
            hold on;
            draw_func(X1(i), Y1(i), X2(i), Y2(i));
            drawnow;
        end
    end

    function draw_func(x1, y1, x2, y2)
        plot(x1, y1, 'r.', 'MarkerSize', 50);
        plot(x2, y2, 'b.', 'MarkerSize', 50);
        plot([0 x1], [0 y1]);
        plot([x1 x2], [y1 y2]);
    end
    
    [T,W] = pendulum();
    animate_func(T,W);
    
end