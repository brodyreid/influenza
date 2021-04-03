flu = readmatrix("C:\Users\Brody\Documents\Stat 359\flu.csv");

incidences_data = flu(1:45,9);
t_weeks = linspace(1,45,45);
theta = theta(1:45);
phi = phi(1:45);

g = @(theta, phi)[327200000.*1.296e-03.*31.*phi.*exp(31.*theta-31) + 12839];

%figure()
%plot(t_weeks, incidences_data, 'o')
%hold on
%plot(t_weeks, g(theta, phi))

%export_fig test.png -transparent -painters