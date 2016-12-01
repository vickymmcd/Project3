function sweep()
hold on;
xlabel('Initial Theta 1 (radians)');
ylabel('Y1-Y2 (m)');
title('The Swing');
for itheta1=pi/10:0.1:pi
    G  = [itheta1,0,0,0];
    [t,y1,y2] = pendulum(G);
    if min(y1-y2)>0
        plot(itheta1,min(y1-y2),'g*');
    else
        plot(itheta1,min(y1-y2),'r*');
    end
end 


end