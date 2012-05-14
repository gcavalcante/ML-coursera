function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
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
    %       of the cost function (computeCostMulti) and gradient here.
    %

    s = zeros(m,1);
    features = size(X, 2);
    i = 1;
    while i <= m
        j = 1;
        while j <= features
            s(i,1) = s(i,1) + (theta(j,1) * X(i,j));
            j = j+1;
        end
        i = i+1;
    end

    cost = 0;
    j =1;

    r = sum(s - y);

    while j <= features
        i = 1;
        cost = 0;
        while i <= m
            cost = cost + ((s(i,1) -y(i,1)) * X(i,j));
            i = i+1;
        end
        theta(j,1) =  theta(j,1) - ((alpha/m) * cost);
        j = j+1;
    end







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
