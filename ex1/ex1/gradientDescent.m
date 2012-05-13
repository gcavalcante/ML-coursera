function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    h = (theta(1,1) * X(:,1)) + (theta(2,1) * X(:,2));
    result = zeros(m,2);
    i = 1;
    while i<= m;
        %theta1
        result(i,1) = (h(i,1) - y(i,1)) * X(i,1);
        %theta2
        result(i,2) = (h(i,1) - y(i,1)) * X(i,2);
        i = i+1;
    end
    theta(1,1) = theta(1,1) - (alpha * sum(result(:,1))/m);
    theta(2,1) = theta(2,1) - (alpha * sum(result(:,2))/m);







    % ============================================================

    % Save the cost J in every iteration
    cost = computeCost(X,y,theta);
    J_history(iter) = cost;

end

end
