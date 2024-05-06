n = -5:0.1:5; 
y = hardlim(n); 
plot(n, y); 
xlabel('Net Input (n)'); 
ylabel('Output'); 
title('Hard Limit Transfer Function'); 
xlim([-6 6]); 
ylim([-0.1 1.1]); 
grid on;