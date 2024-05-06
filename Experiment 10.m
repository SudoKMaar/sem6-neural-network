% Define bipolar input patterns (4 patterns with 2 dimensions each)
patterns = [-1 -1; -1 1; 1 -1; 1 1];
% Define bipolar target outputs
targets = [-1; -1; -1; 1];
% Initialize weights randomly
num_inputs = size(patterns, 2);
weights = rand(num_inputs, 1);
% Define learning rate
learning_rate = 0.1;
% Define number of epochs
num_epochs = 100;
% Train the perceptron network
for epoch = 1:num_epochs
 for i = 1:size(patterns, 1)
 % Compute the activation of the perceptron
 activation = patterns(i, :) * weights;
 
 % Compute the error
 error = targets(i) - sign(activation);
 
 % Update weights
 weights = weights + learning_rate * error * patterns(i, :)';
 end
end
% Test the perceptron network
fprintf('Trained weights: %s\n', mat2str(weights'));
% Evaluate trained network
fprintf('\nEvaluation:\n');
for i = 1:size(patterns, 1)
 % Compute the activation of the perceptron
 activation = patterns(i, :) * weights;
 
 % Compute the output
 output = sign(activation);
 
 fprintf('Input: %s, Target: %d, Output: %d\n', mat2str(patterns(i, :)), targets(i), 
output);
end