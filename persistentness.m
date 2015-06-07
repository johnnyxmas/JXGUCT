% For plotting
x = 1:10;
x = x';

% Four logistic functions 
for xx = 1:10,
% here, .2 is the ratio: awkward*forward/attractive
% so, 1, 1, 5 for the values.
y1(xx) = .2*10/(1+exp(-1*(xx-5)));
% 5, 5, 5
y2(xx) = 5*10/(1+exp(-1*(xx-5)));
% 5, 5, 1
y3(xx) = 25*10/(1+exp(-1*(xx-5)));
% cletus
y4(xx) = 100*10/(1+exp(-1*(xx-5)));
end


% all the lines on one plot.  “Hold on” keeps stuff on
% the same figure.
figure;
plot(x,y1,'g','LineWidth',5); hold on, 
plot(x,y2,'y','LineWidth',5); 
plot(x,y3,'r','LineWidth',5); 
plot(x,y4,'w','LineWidth',5);
set(gca,'color','black');
% comment this axis line out to see the full y values
% for everything.  
axis([0 10 -5 300]); %-5 keeps the edge from being tight
hold off;

% no cletus
figure;
plot(x,y1,'g','LineWidth',5); hold on, 
plot(x,y2,'y','LineWidth',5); 
plot(x,y3,'r','LineWidth',5); 
set(gca,'color','black');
hold off;

% Just the adorable persistent person (green).
figure;
plot(x,y1,'g','LineWidth',5);
set(gca,'color','black');

% cletus
figure;
plot(x,y4,'w','LineWidth',5);
set(gca,'color','black');