t = 0:0.01:5;             % Time vector

x = exp(-t);              % Exponential signal

h = ones(size(t));        % Unit signal

y = conv(x,h);            % Convolution

plot(y);                  % Plot result
title('Continuous Convolution');






% Best Exam Version (Combined Operation)
% -----------------------------------------------------------

t = 0:0.01:5;

x = exp(-t);
h = ones(size(t));

plot(conv(x,h));




% Exam Memory Trick