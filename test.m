clear;

% set your data
f = sin(pi*linspace(0,0.5,10));
f = [f,-fliplr(f)];

% set a grid (necessarily for proper visualization)
x = 1:length(f);

% refine x,f
iter = 7;
p=2; q=2; %tension parameters

x1 = esquemaW3pq(x,p,q,iter);
f1 = esquemaW3pq(f,p,q,iter);

% plot
hold off;
plot(x,f,'o');
hold on;
plot(x1,f1,'.');