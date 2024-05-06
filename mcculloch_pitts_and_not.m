function output = mcculloch_pitts_and_not(x1, x2)
 % Define weights and thresholds
 w1 = -1; % Weight for x1
 w2 = -1; % Weight for x2
 b = 1; % Bias
 
 % Neuron 1 (AND gate)
 y1 = step_function(w1*x1 + w2*x2 + b);
 
 % Neuron 2 (NOT gate)
 y2 = step_function(-2*y1 + 1); % NOT gate using -2*y1 + 1
 
 % Output neuron
 output = y2;
end
function output = step_function(x)
 output = x >= 0;
end