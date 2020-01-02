function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
[m n] = size(X);

for i = 1:m

% compute norm of x(i) with all clusters and find closest one
% [2 3] [4 5]
% (2-4)^2 + (3-5)^2 = x
% (sqrt(x))^2

distances = (X(i,:)-centroids).^2;
norms = (sqrt(sum(distances,2))).^2;

[val, colnum] = min(norms); %get index of smallest norm

idx(i) = colnum; % assign x(i) to closest cluster


end


% =============================================================

end
