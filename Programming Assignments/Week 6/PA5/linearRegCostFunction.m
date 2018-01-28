function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
% LINEARREGCOSTFUNCTION Computes cost and gradient for regularized linear 
% regression with multiple variables.

% [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
% cost of using theta as the parameter for linear regression to fit the 
% data points in X and y. Returns the cost in J and the gradient in grad.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

n = size(X, 2); % number of features

H = X * theta;
J = sum((H - y) .^ 2) / (2 * m) + sum(theta(2 : n) .^ 2) * lambda / (2 * m);
grad = X' * (H - y) / m;
grad(2 : n) = grad(2 : n) + theta(2 : n) * lambda / m;

% =========================================================================

grad = grad(:);

end
