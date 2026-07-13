t = -5:0.01:5;              % Time vector

x = exp(-t.^2);             % Original signal

t_expand = t*0.5;           % Time expansion
t_compress = t*2;           % Time compression

x_expand = exp(-t_expand.^2);       % Expanded signal
x_compress = exp(-t_compress.^2);   % Compressed signal

subplot(3,1,1);             % First subplot
plot(t,x);
title('Original');

subplot(3,1,2);             % Second subplot
plot(t,x_expand);
title('Expanded');

subplot(3,1,3);             % Third subplot
plot(t,x_compress);
title('Compressed');



% Best Exam Version (Time Scaling)
% -----------------------------------------------------------

t = -5:0.01:5;              % Time vector

x = exp(-t.^2);             % Original signal

x1 = exp(-(0.5*t).^2);      % Expanded signal
x2 = exp(-(2*t).^2);        % Compressed signal

plot(t,x);                  % Original
hold on;

plot(t,x1);                 % Expanded
plot(t,x2);                 % Compressed

legend('Original','Expanded','Compressed');



% Exam Memory Trick

0 < a < 1  = Expansion
a > 1      = Compression