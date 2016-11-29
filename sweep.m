function sweep()
hold on
for itheta1=pi/10:0.1:pi
    G  = [itheta1,0,0,0];
    [t,y1,y2] = pendulum(G);
    plot(itheta1,y1-y2,'r*');
end 


end