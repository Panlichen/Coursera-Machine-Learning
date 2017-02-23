function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
Hx=sigmoid(X*theta);  % X是m*2的矩阵，theta是逻辑斯蒂函数中的变量，(n+1)*1的矩阵，Hx是m*2的矩阵
J= 1/m * ( -y'*log(Hx)- (1-y')*log(1-Hx) ); % 逻辑斯蒂回归的成本函数
grad=1/m * ((Hx-y)'*X); % theta下降的梯度

% =============================================================

end
