function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

i = 1;
j = 1;
m = length(z);
n = columns(z);
result = zeros(m,n);

while i <= m
  j = 1;
  while j <= n
    result(i,j) = 1 / (1+e^-z(i,j));
    j = j +1;
  end
  i = i+1;
end

g = result;




% =============================================================

end
