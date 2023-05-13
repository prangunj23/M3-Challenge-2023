years = TCP23data(:, 1);
salesInEurope = TCP23data(:, 3);
years = years{1:14, :};
salesInEurope = salesInEurope{1:14, :};
% Linear Regression 
line = fitlm(years, salesInEurope)

% Exponential Regression
model = ExponentialFitEurope(years,salesInEurope)
model(2025)
model(2028)

