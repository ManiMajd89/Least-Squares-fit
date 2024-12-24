% LSAT vs GPA: Linear, Quadratic, and Cubic Fit
% Author: Mani Majd
% Source: ESC103 Lab 2
% Date: November 2024
% Description:
%   This script performs linear, quadratic, and cubic least squares fits
%   to model the relationship between GPA and LSAT scores. It also
%   visualizes the data points and the fitted models.

%% Load Data
load lawdata % Load GPA and LSAT data
figure;
plot(gpa, lsat, 'b.', 'MarkerSize', 15); % Plot data points
xlabel('GPA');
ylabel('LSAT');
title('LSAT vs GPA');
hold on;

%% Linear Fit
% Model: y = c0 + c1 * x
y = lsat;
A = [ones(size(gpa)) gpa];
Astar = A' * A;
ystar = A' * y;
c = Astar \ ystar; % Linear fit coefficients
e1 = y - (A * c); % Errors
MSE1 = sum(e1.^2) / length(y); % Mean Squared Error for linear fit

%% Quadratic Fit
% Model: y = c0 + c1 * x + c2 * x^2
A2 = [ones(size(gpa)) gpa gpa.^2];
Astar2 = A2' * A2;
ystar2 = A2' * y;
c2 = Astar2 \ ystar2; % Quadratic fit coefficients
e2 = y - (A2 * c2); % Errors
MSE2 = sum(e2.^2) / length(y); % Mean Squared Error for quadratic fit

%% Cubic Fit
% Model: y = c0 + c1 * x + c2 * x^2 + c3 * x^3
A3 = [ones(size(gpa)) gpa gpa.^2 gpa.^3];
Astar3 = A3' * A3;
ystar3 = A3' * y;
c3 = Astar3 \ ystar3; % Cubic fit coefficients
e3 = y - (A3 * c3); % Errors
MSE3 = sum(e3.^2) / length(y); % Mean Squared Error for cubic fit

%% Visualization
x_plot = linspace(min(gpa), max(gpa), 100);
y_lin = c(1) + c(2) * x_plot; % Linear fit
y_quad = c2(1) + c2(2) * x_plot + c2(3) * (x_plot.^2); % Quadratic fit
y_cub = c3(1) + c3(2) * x_plot + c3(3) * (x_plot.^2) + c3(4) * (x_plot.^3); % Cubic fit

plot(x_plot, y_lin, '-k', 'LineWidth', 1.5); % Linear fit
plot(x_plot, y_quad, '-g', 'LineWidth', 1.5); % Quadratic fit
plot(x_plot, y_cub, 'r', 'LineWidth', 1.5); % Cubic fit

legend('Data points', 'Linear fit', 'Quadratic fit', 'Cubic fit');
hold off;