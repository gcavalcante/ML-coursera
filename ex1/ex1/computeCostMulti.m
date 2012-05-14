function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
i = 1;
cost = 0;
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


h = theta(1,1) * X(:,1) + theta(2,1) * X(:,2);

i = 1;
while (i<=m)
     s(i,1) = (s(i,1) - y(i,1)) ^ 2;
     i = i + 1;
end

J = sum(s)  / (2*m);



%while i<=m
%    cost = cost + ((X(i,:) * theta) * (X(i,:) * theta)');
%    i = i+1;
%end
%J = cost / (2*m);


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
