%x(1) = theta, x(2) = phi
%for analysis, population size n = 327.2 mill. Assume 12839 people start
%infected. So phi(0) = I_0 = 3.9239e-05
%theta(0) = 1
%1/beta = 17 days/new infection ==> beta = 0.06 new infections/day
%1/gamma = 5 days for recovery ==> gamma = 0.2 recoveries/day
%lambda = 5

%sources of error: recovered don't go back into susceptibles,
%no birth/death rate, maybe need to assume a negative binomial
%instead of poisson,

beta = 0.06;
gamma = 0.2;
lambda = 5;

f = @(t,x)[-beta*x(2);-(beta + gamma)*x(2)+beta*lambda*x(2)*exp(5*(x(1)-1))];
[t, xa] = ode45(f, [0 200], [1 3.9239e-05]);

theta = xa(:,1);
phi = xa(:,2);

[incidences] = beta.*lambda.*phi.*exp(lambda.*(theta-1));

plot(t, incidences)