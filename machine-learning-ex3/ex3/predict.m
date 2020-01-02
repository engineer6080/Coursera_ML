function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


% add 1 a0... to each. Bias unit
% X contains all 5000 pics

% EACH row is a picture
% 5000 x 400 becomes 5000 x 401

a1 = [ones(m,1) X];

% need to multiply by big theta 1
% big theta 1 is 25 * 401

z2 = a1 * Theta1';

% need to run sigmoid on all (hidden layer)

a2 = sigmoid(z2); % 5000 x 25

% add 1 column (bias for hidden layer)

a2 = [ones(m,1) a2]; % 5000 x 26

%Now for hidden to output

% big theta 2 is 10 x 26

z3 = a2 * Theta2'; % 5000 x 10

 % ^ output of the 10 functions. 5000 pics

% a3 aka output hypothesis

% run sigmoid on all

a3 = sigmoid(z3); % each row has sigmoid of each of the output function 5000 x 10
% 10 output functions for each of the 5000 pics


% we need the MAX index for the number
% EACH COLUMN ARE THE OUTPUT FUNCTIONS FOR EACH PICTURE
% 5000 COLUMNS

% 10 x 5000

%       .       .       .       .      ...5000
%       .
%       .
%       .
%       ..10

[prob index] = max(a3'); % flip it and take max of each column get the index of the column number

p = index';











% =========================================================================


end
