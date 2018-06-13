X = [
0.0886465311050415 
]

Y = [
0.03066098690032959 
]

Z = [
138.15510557964274 
]

XH = [0.0886465311050415 ];
YH = [0.03066098690032959 ];
ZH = [138.15510557964274 ];
XP = 1 ./(1+exp(-X));
YP = 1 ./(1+exp(-Y));
XHP = 1 ./(1+exp(-XH));
YHP = 1 ./(1+exp(-YH));figure('Name','objective_func_w(1,2,0.0886465311050415,0.0886465311050415,0.03066098690032959,0.03066098690032959,10)','NumberTitle','off');
plot3(XH,YH,ZH,'LineWidth',2)
xlabel(1);
ylabel(2);
zlabel('-LogLik');
hold on
surf(X,Y,Z)
hold off
figure('Name','objective_func_p(1,2,0.0886465311050415,0.0886465311050415,0.03066098690032959,0.03066098690032959,10)','NumberTitle','off');
plot3(XHP,YHP,ZH,'LineWidth',2)
xlabel(1);
ylabel(2);
zlabel('-LogLik');
hold on
surf(XP,YP,Z)
hold off
