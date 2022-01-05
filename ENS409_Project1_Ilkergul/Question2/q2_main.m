clc;
clear;
%%%%% BRACKETING METHODS %%%%%
%% Bisection Method
fprintf("Welcome to the Bisection Method function\n");
lowerbound = input('Please enter the lower bound:');
upperbound = input('Please enter the upper bound:');
while(upperbound < lowerbound)
    fprintf("Upper bound is smaller than the lower bound\n");
    upperbound = input('Please enter the upper bound: ');
end
maxiter = input('Please enter the maximum iteration number:');
[root, error, iteration] = q2_BisectionMethod(lowerbound, upperbound, maxiter);
fprintf('The founded root is %.6f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.6f', iteration);
fprintf('\n')
fprintf('The relative error is %.6f', error);
fprintf('\n')

%% False Position Method
fprintf("Welcome to the False Position Method function\n");
lowerbound = input('Please enter the lower bound:');
upperbound = input('Please enter the upper bound:');
while(upperbound < lowerbound)
    fprintf("Upper bound is smaller than the lower bound\n");
    upperbound = input('Please enter the upper bound: ');
end
maxiter = input('Please enter the maximum iteration number:');
[root, error, iteration] = q2_FalsePositionMethod(lowerbound, upperbound, maxiter);
fprintf('The founded root is %.6f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.6f', iteration);
fprintf('\n')
fprintf('The relative error is %.6f', error);
fprintf('\n')
%% Modified False Position Method
fprintf("Welcome to the Modified False Position Method function\n");
lowerbound = input('Please enter the lower bound:');
upperbound = input('Please enter the upper bound:');
while(upperbound < lowerbound)
    fprintf("Upper bound is smaller than the lower bound\n");
    upperbound = input('Please enter the upper bound: ');
end
maxiter = input('Please enter the maximum iteration number:');
[root, error, iteration] = q2_ModifiedFalsePositionMethod(lowerbound, upperbound, maxiter);
fprintf('The founded root is %.6f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.6f', iteration);
fprintf('\n')
fprintf('The relative error is %.12f', error);
fprintf('\n')
%%%%% BRACKETING METHODS %%%%%

%%%%% OPEN METHODS %%%%%
%% Newton Method
fprintf("Welcome to the Newton Method function\n");
p0 = input('Please enter the initial value:');
maxiter = input('Please enter the maximum iteration number:');

[root, error, iteration] = q2_NewtonMethod(p0, maxiter);
fprintf('The founded root is %.6f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.6f', iteration);
fprintf('\n')
fprintf('The relative error is %.12f', error);
fprintf('\n')
%% Secant Method
fprintf("Welcome to the Secand Method function\n");
p0 = input('Please enter the p0:');
p1 = input('Please enter the p1:');
maxiter = input('Please enter the maximum iteration number:');
[root, error, iteration] = q2_SecantMethod(p0, p1, maxiter);
fprintf('The founded root is %.8f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.8f', iteration);
fprintf('\n')
fprintf('The relative error is %.12f', error);
fprintf('\n')
%% Fixed Point Iteration
fprintf("Welcome to the Fixed Point Iteration function\n");
p0 = input('Please enter the initial value:');
maxiter = input('Please enter the maximum iteration number:');

[root, error, iteration] = q2_FixedPointIteration(p0, maxiter);
fprintf('The founded root is %.8f', root);
fprintf('\n')
fprintf('The root given by fzero function is %.8f', iteration);
fprintf('\n')
fprintf('The relative error is %.12f', error);
fprintf('\n')

%%%%% OPEN METHODS %%%%%