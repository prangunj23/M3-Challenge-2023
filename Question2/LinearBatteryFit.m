function [fitresult, gof] = LinearBatteryFit(batteryyears, VarName4)
%CREATEFIT(BATTERYYEARS,VARNAME4)
%  Create a fit.
%
%  Data for 'Battery Years' fit:
%      X Input: batteryyears
%      Y Output: VarName4 from batterycost
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 03-Mar-2023 11:32:33


%% Fit: 'Battery Years'.
[xData, yData] = prepareCurveData( batteryyears, VarName4 );

% Set up fittype and options.
ft = fittype( 'poly1' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'Battery Fit' );
h = plot( fitresult, xData, yData );
legend( h, 'VarName4 vs. batteryyears', 'Battery Years', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'Years', 'Interpreter', 'none' );
ylabel( 'Energy Densities', 'Interpreter', 'none' );
grid on


