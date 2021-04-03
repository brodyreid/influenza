%negative binomial
%I_0 = 200
%mean = n/p
p = 0.8;
n = 5;
beta = 0.06;
gamma = 0.2;

g = @(t,x)[-beta*x(2); -(beta + gamma)*x(2) + beta*x(2)*(-(n*(2*(p-1)*x(1)-n+1)*((p*x(1))/((p-1)*x(1)+1))^n)/(x(1)^2*((p-1)*x(1)+1)^2))/(n/p)];
[t, xb] = ode45(g, [0 250], [1 3.9239e-05]);

theta1 = xb(:,1);
phi1 = xb(:,2);

[incidences1] = 12839 + 327200000.*beta.*phi1.*(n.*((p.*theta1)./((p-1).*theta1+1)).^n)./(theta1.*((p-1).*theta1+1));

plot(t, incidences1)
%plot(t, theta1)