% Define input patterns
patterns = [
[0 0]; % Class 1 (pattern 1)
[0 1]; % Class 1 (pattern 2)
[1 0]; % Class 2 (pattern 1)
[1 1]; % Class 2 (pattern 2)
];
% Number of inputs and neurons (adjust based on your data)
num_inputs = size(patterns, 2);
num_neurons = 2; % Two neurons for two classes
% Initialize weights randomly
weights = rand(num_neurons, num_inputs);
% Define learning rate
learning_rate = 0.1;
% Train the network using Hebbian learning
for i = 1:size(patterns, 1)
% Compute activations (no activation function for Hebbian learning)
activations = patterns(i, :) * weights';
% Update weights based on Hebbian rule (outer product)
weight_updates = learning_rate * activations' * patterns(i, :);
weights = weights + weight_updates;
end
% Test the network
for i = 1:size(patterns, 1)
 % Compute activations
 activations = patterns(i, :) * weights';
 % Find the winning neuron (highest activation)
 [~, winning_neuron] = max(activations);
 % Print classification result (replace with class labels if applicable)
 fprintf('Pattern %d: Classified as Class %d\n', i, winning_neuron);
end