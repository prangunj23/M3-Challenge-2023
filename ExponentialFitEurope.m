function [fitresult, gof] = ExponentialFitEurope(x, y)
%CREATEFIT(X,Y)
%  Create a fit.
%
%  Data for 'ExponentialE-bikesEurope' fit:
%      X Input: x
%      Y Output: y
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 03-Mar-2023 08:50:25


%% Fit: 'ExponentialE-bikesEurope'.
[xData, yData] = prepareCurveData( x, y );

% Set up fittype and options.
ft = fittype( 'exp1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [2.6946180791496e-178 0.206514653522816];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'ExponentialE-bikesEurope' );
h = plot( fitresult, xData, yData );
legend( h, 'Actual Data', 'Exponential Fit', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'Years', 'Interpreter', 'none' );
ylabel( 'E-bikes sold in Europe', 'Interpreter', 'none' );
title('E-bike sales in Europe over Time')
grid on


