% est Exam Open Ended Task ,Triangular Wave Approximation ,This is the most important code from Lab 9.

t = linspace(-pi,pi,1000);          % Time vector

x = sawtooth(t,0.5);               % Triangle wave

y = zeros(size(t));                % Initialize approximation

for n = 1:2:13                     % Odd harmonics
    y = y + (8/(pi^2*n^2))*((-1)^((n-1)/2))*cos(n*t);
end

plot(t,x,'--',t,y);                % Plot signals

legend('Original','Approximation');

% Best Exam Version (Combined Operation)
% -----------------------------------------------------------
t = linspace(-pi,pi,1000);

x = sawtooth(t,0.5);

y = zeros(size(t));

for n = 1:2:13
    y = y + (8/(pi^2*n^2))*((-1)^((n-1)/2))*cos(n*t);
end

plot(t,x,'--',t,y);



