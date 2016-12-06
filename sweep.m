function sweep()
hold on;
ylabel('Initial Theta 1 (degrees)');
xlabel('Mass of Top Rider (lbs)');
c = colorbar;
ylabel(c,'Y1-Y2 (cm)');
title('The Swing');
m2 = 30;
L = zeros(10,10);
m12 = zeros(10,10);
itheta12 = zeros(10,10);
for i=1:1:10
    itheta1=(i*pi)/20;
    %itheta12(1,i) = itheta1;
    for s=1:1:10
        sy = s-1;
        m1 =(10*sy);
        G  = [itheta1,0,0,0];
        [t,y1,y2] = pendulum(G,m1,m2);
        L(s,i) = min(y1-y2);
        itheta12(s,i) = itheta1;
        m12(s,i) = m1;
    end
end 

m12 = m12*2.2;
itheta12 = (itheta12*180)/pi;
L = L*100;

% Then create our beautiful plot.
pcolor(m12, itheta12, L)
shading interp
colorbar

contour(m12, itheta12, L, [0 0], 'r*-', 'LineWidth', 3)
end