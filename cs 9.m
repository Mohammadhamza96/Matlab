% One Code Pattern to Memorize

% Almost every Fourier Series question in the exam follows:


t = linspace(-pi,pi,1000);     % Time vector

x = signal;                    % Original signal

y = zeros(size(t));            % Approximation

for n = ...
    y = y + Fourier_term;
end

plot(t,x,'--',t,y);
legend('Original','Approximation');