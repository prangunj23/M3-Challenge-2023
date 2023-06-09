function [fitresult, gof] = MultivariableRegression(finalgasnums, finalBatterynums, finalsalesnums)
%CREATEFIT(FINALGASNUMS,FINALBATTERYNUMS,FINALSALESNUMS)
%  Create a fit.
%
%  Data for 'untitled fit 2' fit:
%      X Input: finalgasnums
%      Y Input: finalBatterynums
%      Z Output: finalsalesnums
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 03-Mar-2023 13:36:21


%% Fit: 'untitled fit 2'.
[xData, yData, zData] = prepareSurfaceData( finalgasnums, finalBatterynums, finalsalesnums );

% Set up fittype and options.
ft = fittype( 'poly22' );

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft, 'Normalize', 'on' );

% Plot fit with data.
figure( 'Name', 'untitled fit 2' );
h = plot( fitresult, [xData, yData], zData );
legend( h, 'untitled fit 2', 'finalsalesnums vs. finalgasnums, finalBatterynums', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'finalgasnums', 'Interpreter', 'none' );
ylabel( 'finalBatterynums', 'Interpreter', 'none' );
zlabel( 'finalsalesnums', 'Interpreter', 'none' );
grid on
view( -25.3, 42.6 );


