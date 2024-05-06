function output = mcculloch_pitts_xor(x1, x2)
 % Define weights and thresholds
 w11 = 1; % Weight for x1 to hidden neuron 1
 w12 = 1; % Weight for x2 to hidden neuron 1
 b1 = -1.5; % Threshold for hidden neuron 1
 w21 = 1; % Weight for x1 to hidden neuron 2
 w22 = 1; % Weight for x2 to hidden neuron 2
 b2 = -1.5; % Threshold for hidden neuron 2
 w31 = -1; % Weight for hidden neuron 1 to output
 w32 = -1; % Weight for hidden neuron 2 to output
 b3 = -0.5; % Threshold for output neuron
 
 % Hidden Neuron
y1 = step_function(w11*x1 + w12*x2 + b1);
 y2 = step_function(w21*x1 + w22*x2 + b2);
 
% Output neuron
output = step_function(w31*y1 + w32*y2 + b3);
end
function output = step_function(x)
 output = x >= 0;
end